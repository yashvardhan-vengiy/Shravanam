-- SHRAVANAM DATABASE SCHEMA
-- Tracker-only devotional hearing dashboard
-- No audio hosting, no Supabase Storage, no audio_url requirement

create extension if not exists pgcrypto;

create table if not exists public.profiles (
  id uuid primary key references auth.users(id) on delete cascade,
  name text,
  email text,
  avatar_url text,
  language text default 'English',
  timezone text default 'Asia/Kolkata',
  daily_target_minutes integer default 30,
  preferred_speakers text[],
  preferred_categories text[],
  created_at timestamp with time zone default now(),
  updated_at timestamp with time zone default now()
);

create table if not exists public.admin_emails (
  email text primary key,
  created_at timestamp with time zone default now()
);

create table if not exists public.lectures (
  id uuid primary key default gen_random_uuid(),
  title text not null,
  speaker text,
  category text,
  series text,
  duration_minutes integer default 0 check (duration_minutes >= 0),
  language text default 'English',
  lecture_date date,
  source_name text,
  source_url text,
  youtube_url text,
  thumbnail_url text,
  tags text[],
  difficulty_level text,
  created_at timestamp with time zone default now(),
  updated_at timestamp with time zone default now()
);

create table if not exists public.user_lecture_progress (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references auth.users(id) on delete cascade,
  lecture_id uuid not null references public.lectures(id) on delete cascade,
  status text not null default 'Not Started'
    check (
      status in (
        'Not Started',
        'Planned',
        'Partially Heard',
        'Heard',
        'Completed',
        'Revisit Later'
      )
    ),
  completion_percentage integer default 0 check (completion_percentage >= 0 and completion_percentage <= 100),
  date_started timestamp with time zone,
  date_completed timestamp with time zone,
  notes text,
  realizations text,
  memorable_quotes text,
  is_favorite boolean default false,
  saved_for_later boolean default false,
  updated_at timestamp with time zone default now(),
  unique(user_id, lecture_id)
);

create table if not exists public.hearing_lists (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references auth.users(id) on delete cascade,
  title text not null,
  description text,
  target_date date,
  created_at timestamp with time zone default now(),
  updated_at timestamp with time zone default now()
);

create table if not exists public.hearing_list_items (
  id uuid primary key default gen_random_uuid(),
  list_id uuid not null references public.hearing_lists(id) on delete cascade,
  lecture_id uuid not null references public.lectures(id) on delete cascade,
  sort_order integer default 0,
  created_at timestamp with time zone default now(),
  unique(list_id, lecture_id)
);

-- Auto-create profile after login
create or replace function public.handle_new_user()
returns trigger
language plpgsql
security definer
set search_path = public
as $$
begin
  insert into public.profiles (id, name, email, avatar_url)
  values (
    new.id,
    coalesce(new.raw_user_meta_data->>'full_name', new.raw_user_meta_data->>'name'),
    new.email,
    new.raw_user_meta_data->>'avatar_url'
  )
  on conflict (id) do nothing;

  return new;
end;
$$;

drop trigger if exists on_auth_user_created on auth.users;
create trigger on_auth_user_created
after insert on auth.users
for each row execute procedure public.handle_new_user();

-- updated_at helper
create or replace function public.set_updated_at()
returns trigger
language plpgsql
as $$
begin
  new.updated_at = now();
  return new;
end;
$$;

drop trigger if exists set_profiles_updated_at on public.profiles;
create trigger set_profiles_updated_at
before update on public.profiles
for each row execute procedure public.set_updated_at();

drop trigger if exists set_lectures_updated_at on public.lectures;
create trigger set_lectures_updated_at
before update on public.lectures
for each row execute procedure public.set_updated_at();

drop trigger if exists set_progress_updated_at on public.user_lecture_progress;
create trigger set_progress_updated_at
before update on public.user_lecture_progress
for each row execute procedure public.set_updated_at();

drop trigger if exists set_lists_updated_at on public.hearing_lists;
create trigger set_lists_updated_at
before update on public.hearing_lists
for each row execute procedure public.set_updated_at();

-- Row Level Security
alter table public.profiles enable row level security;
alter table public.admin_emails enable row level security;
alter table public.lectures enable row level security;
alter table public.user_lecture_progress enable row level security;
alter table public.hearing_lists enable row level security;
alter table public.hearing_list_items enable row level security;

-- Helper: check current user admin by email
create or replace function public.is_admin()
returns boolean
language sql
security definer
set search_path = public
as $$
  select exists (
    select 1
    from public.admin_emails
    where lower(email) = lower(coalesce(auth.jwt()->>'email', ''))
  );
$$;

-- Drop old policies if rerun
DO $$
DECLARE
  pol record;
BEGIN
  FOR pol IN
    SELECT schemaname, tablename, policyname
    FROM pg_policies
    WHERE schemaname = 'public'
      AND tablename IN ('profiles', 'admin_emails', 'lectures', 'user_lecture_progress', 'hearing_lists', 'hearing_list_items')
  LOOP
    EXECUTE format('DROP POLICY IF EXISTS %I ON %I.%I', pol.policyname, pol.schemaname, pol.tablename);
  END LOOP;
END $$;

-- Profiles
create policy "Users can read own profile"
on public.profiles
for select
using (auth.uid() = id);

create policy "Users can update own profile"
on public.profiles
for update
using (auth.uid() = id)
with check (auth.uid() = id);

create policy "Users can insert own profile"
on public.profiles
for insert
with check (auth.uid() = id);

-- Admin emails
create policy "Admins can read admin emails"
on public.admin_emails
for select
using (public.is_admin());

-- Lectures
create policy "Anyone can read lectures"
on public.lectures
for select
using (true);

create policy "Admins can insert lectures"
on public.lectures
for insert
with check (public.is_admin());

create policy "Admins can update lectures"
on public.lectures
for update
using (public.is_admin())
with check (public.is_admin());

create policy "Admins can delete lectures"
on public.lectures
for delete
using (public.is_admin());

-- Progress
create policy "Users can read own progress"
on public.user_lecture_progress
for select
using (auth.uid() = user_id);

create policy "Users can insert own progress"
on public.user_lecture_progress
for insert
with check (auth.uid() = user_id);

create policy "Users can update own progress"
on public.user_lecture_progress
for update
using (auth.uid() = user_id)
with check (auth.uid() = user_id);

create policy "Users can delete own progress"
on public.user_lecture_progress
for delete
using (auth.uid() = user_id);

-- Hearing lists
create policy "Users can read own hearing lists"
on public.hearing_lists
for select
using (auth.uid() = user_id);

create policy "Users can create own hearing lists"
on public.hearing_lists
for insert
with check (auth.uid() = user_id);

create policy "Users can update own hearing lists"
on public.hearing_lists
for update
using (auth.uid() = user_id)
with check (auth.uid() = user_id);

create policy "Users can delete own hearing lists"
on public.hearing_lists
for delete
using (auth.uid() = user_id);

-- Hearing list items
create policy "Users can manage own hearing list items"
on public.hearing_list_items
for all
using (
  exists (
    select 1
    from public.hearing_lists
    where hearing_lists.id = hearing_list_items.list_id
      and hearing_lists.user_id = auth.uid()
  )
)
with check (
  exists (
    select 1
    from public.hearing_lists
    where hearing_lists.id = hearing_list_items.list_id
      and hearing_lists.user_id = auth.uid()
  )
);

-- SAMPLE DATA
insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'Bhagavad Gita Introduction',
  'Srila Prabhupada',
  'Bhagavad Gita',
  'Gita Lectures',
  45,
  'English',
  'ISKCON Desire Tree',
  'https://iskcondesiretree.com',
  null,
  array['gita', 'introduction', 'krishna'],
  'Beginner'
where not exists (select 1 from public.lectures where title = 'Bhagavad Gita Introduction');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'Importance of Japa',
  'Radhanath Swami',
  'Japa',
  'Devotional Practice',
  60,
  'English',
  'YouTube',
  null,
  'https://youtube.com',
  array['japa', 'sadhana', 'holy name'],
  'Beginner'
where not exists (select 1 from public.lectures where title = 'Importance of Japa');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'Bhakti Sastri Preparation Class',
  'Bhakti Vikasa Swami',
  'Bhakti Sastri',
  'Study Course',
  75,
  'English',
  'ISKCON Desire Tree',
  'https://iskcondesiretree.com',
  null,
  array['bhakti sastri', 'study', 'scripture'],
  'Intermediate'
where not exists (select 1 from public.lectures where title = 'Bhakti Sastri Preparation Class');

-- IMPORTANT:
-- After running this file, add your own Gmail as admin by running this separately:
-- insert into public.admin_emails (email) values ('your-email@gmail.com') on conflict do nothing;
