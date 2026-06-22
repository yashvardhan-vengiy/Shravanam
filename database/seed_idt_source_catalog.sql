-- SHRAVANAM V3: ISKCON Desire Tree Audio source catalog
-- Run this after database/schema.sql.
-- These are external source tracking records only. No audio is hosted or played inside Shravanam.

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'ISKCON Desire Tree Audio — Main Archive',
  'Various ISKCON Speakers',
  'Main Archive',
  'Official Audio Archive',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/',
  null,
  array['iskcon desire tree', 'archive', 'external source'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'ISKCON Desire Tree Audio — Main Archive');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'Srila Prabhupada Audio Archive',
  'Srila Prabhupada',
  'Srila Prabhupada',
  'Official Audio Archive',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F01_-_Srila_Prabhupada&q=f',
  null,
  array['srila prabhupada', 'archive', 'lectures'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'Srila Prabhupada Audio Archive');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'ISKCON Swamis — Full Archive',
  'Various ISKCON Swamis',
  'ISKCON Swamis',
  'Official Audio Archive',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F02_-_ISKCON_Swamis&q=f',
  null,
  array['swamis', 'archive'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'ISKCON Swamis — Full Archive');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'ISKCON Swamis — A to C Source Section',
  'Various ISKCON Swamis',
  'ISKCON Swamis',
  'Alphabetical Source Section',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F02_-_ISKCON_Swamis%2FISKCON_Swamis_-_A_to_C&q=f',
  null,
  array['swamis', 'a to c'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'ISKCON Swamis — A to C Source Section');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'ISKCON Swamis — D to P Source Section',
  'Various ISKCON Swamis',
  'ISKCON Swamis',
  'Alphabetical Source Section',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F02_-_ISKCON_Swamis%2FISKCON_Swamis_-_D_to_P&q=f',
  null,
  array['swamis', 'd to p'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'ISKCON Swamis — D to P Source Section');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'ISKCON Swamis — R to Y Source Section',
  'Various ISKCON Swamis',
  'ISKCON Swamis',
  'Alphabetical Source Section',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F02_-_ISKCON_Swamis%2FISKCON_Swamis_-_R_to_Y&q=f',
  null,
  array['swamis', 'r to y'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'ISKCON Swamis — R to Y Source Section');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'ISKCON Prabhujis — Full Archive',
  'Various ISKCON Prabhujis',
  'ISKCON Prabhujis',
  'Official Audio Archive',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F03_-_ISKCON_Prabhujis&q=f',
  null,
  array['prabhujis', 'archive'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'ISKCON Prabhujis — Full Archive');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'ISKCON Prabhujis — A to J Source Section',
  'Various ISKCON Prabhujis',
  'ISKCON Prabhujis',
  'Alphabetical Source Section',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F03_-_ISKCON_Prabhujis%2FISKCON_Prabhujis_-_A_to_J&q=f',
  null,
  array['prabhujis', 'a to j'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'ISKCON Prabhujis — A to J Source Section');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'ISKCON Prabhujis — K to R Source Section',
  'Various ISKCON Prabhujis',
  'ISKCON Prabhujis',
  'Alphabetical Source Section',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F03_-_ISKCON_Prabhujis%2FISKCON_Prabhujis_-_K_to_R&q=f',
  null,
  array['prabhujis', 'k to r'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'ISKCON Prabhujis — K to R Source Section');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'ISKCON Prabhujis — S to Y Source Section',
  'Various ISKCON Prabhujis',
  'ISKCON Prabhujis',
  'Alphabetical Source Section',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F03_-_ISKCON_Prabhujis%2FISKCON_Prabhujis_-_S_to_Y&q=f',
  null,
  array['prabhujis', 's to y'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'ISKCON Prabhujis — S to Y Source Section');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'ISKCON Matajis Audio Archive',
  'Various ISKCON Matajis',
  'ISKCON Matajis',
  'Official Audio Archive',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F04_-_ISKCON_Matajis&q=f',
  null,
  array['matajis', 'archive'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'ISKCON Matajis Audio Archive');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'ISKCON Chowpatty Audio Archive',
  'ISKCON Chowpatty Speakers',
  'ISKCON Chowpatty',
  'Official Audio Archive',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F05_-_ISKCON_Chowpatty&q=f',
  null,
  array['chowpatty', 'archive', 'mumbai'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'ISKCON Chowpatty Audio Archive');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'ISKCON Desire Tree — More Archives',
  'Various ISKCON Centers',
  'More Archives',
  'Official Audio Archive',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F06_-_More&q=f',
  null,
  array['centers', 'temples', 'archive'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'ISKCON Desire Tree — More Archives');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'ISKCON Kanpur Audio Archive',
  'ISKCON Kanpur Speakers',
  'ISKCON Kanpur',
  'Temple Archive',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F06_-_More%2F03_-_ISKCON_Kanpur&q=f',
  null,
  array['kanpur', 'temple', 'archive'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'ISKCON Kanpur Audio Archive');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'ISKCON GEV Audio Archive',
  'ISKCON GEV Speakers',
  'ISKCON Centers',
  'Temple Archive',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F06_-_More%2F00_-_ISKCON_GEV&q=f',
  null,
  array['gev', 'govardhan ecovillage', 'archive'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'ISKCON GEV Audio Archive');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'Bhagavad Gita Class External Site',
  'Various Speakers',
  'Bhagavad Gita',
  'External Classes',
  0,
  'Mixed',
  'External Source',
  'https://bhagavadgitaclass.com/',
  null,
  array['bhagavad gita', 'classes', 'external'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'Bhagavad Gita Class External Site');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'Srimad Bhagavatam Class External Site',
  'Various Speakers',
  'Srimad Bhagavatam',
  'External Classes',
  0,
  'Mixed',
  'External Source',
  'https://www.srimadbhagavatamclass.com/',
  null,
  array['srimad bhagavatam', 'classes', 'external'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'Srimad Bhagavatam Class External Site');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'ISKCON Desire Tree SoundCloud Source',
  'Various Speakers',
  'SoundCloud',
  'External Audio Source',
  0,
  'Mixed',
  'External Source',
  'https://soundcloud.com/iskcon-desire-tree',
  null,
  array['soundcloud', 'external'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'ISKCON Desire Tree SoundCloud Source');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'Explore Bhakti Charu Swami Lectures',
  'Bhakti Charu Swami',
  'Speaker Completion',
  'ISKCON Swamis A to C',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F02_-_ISKCON_Swamis%2FISKCON_Swamis_-_A_to_C&q=f',
  null,
  array['bhakti charu swami', 'speaker completion', 'swamis'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'Explore Bhakti Charu Swami Lectures');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'Explore Bhakti Tirtha Swami Lectures',
  'Bhakti Tirtha Swami',
  'Speaker Completion',
  'ISKCON Swamis A to C',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F02_-_ISKCON_Swamis%2FISKCON_Swamis_-_A_to_C&q=f',
  null,
  array['bhakti tirtha swami', 'speaker completion', 'swamis'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'Explore Bhakti Tirtha Swami Lectures');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'Explore Bhakti Vaibhava Swami Lectures',
  'Bhakti Vaibhava Swami',
  'Speaker Completion',
  'ISKCON Swamis A to C',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F02_-_ISKCON_Swamis%2FISKCON_Swamis_-_A_to_C&q=f',
  null,
  array['bhakti vaibhava swami', 'speaker completion', 'swamis'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'Explore Bhakti Vaibhava Swami Lectures');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'Explore Bhakti Vikas Swami Lectures',
  'Bhakti Vikas Swami',
  'Speaker Completion',
  'ISKCON Swamis A to C',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F02_-_ISKCON_Swamis%2FISKCON_Swamis_-_A_to_C&q=f',
  null,
  array['bhakti vikas swami', 'speaker completion', 'swamis'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'Explore Bhakti Vikas Swami Lectures');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'Explore Bhakti Vijnana Goswami Lectures',
  'Bhakti Vijnana Goswami',
  'Speaker Completion',
  'ISKCON Swamis A to C',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F02_-_ISKCON_Swamis%2FISKCON_Swamis_-_A_to_C&q=f',
  null,
  array['bhakti vijnana goswami', 'speaker completion', 'swamis'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'Explore Bhakti Vijnana Goswami Lectures');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'Explore Bhanu Swami Lectures',
  'Bhanu Swami',
  'Speaker Completion',
  'ISKCON Swamis A to C',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F02_-_ISKCON_Swamis%2FISKCON_Swamis_-_A_to_C&q=f',
  null,
  array['bhanu swami', 'speaker completion', 'swamis'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'Explore Bhanu Swami Lectures');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'Explore Bir Krishna Goswami Lectures',
  'Bir Krishna Goswami',
  'Speaker Completion',
  'ISKCON Swamis A to C',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F02_-_ISKCON_Swamis%2FISKCON_Swamis_-_A_to_C&q=f',
  null,
  array['bir krishna goswami', 'speaker completion', 'swamis'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'Explore Bir Krishna Goswami Lectures');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'Explore Candramauli Swami Lectures',
  'Candramauli Swami',
  'Speaker Completion',
  'ISKCON Swamis A to C',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F02_-_ISKCON_Swamis%2FISKCON_Swamis_-_A_to_C&q=f',
  null,
  array['candramauli swami', 'speaker completion', 'swamis'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'Explore Candramauli Swami Lectures');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'Explore Devamrita Swami Lectures',
  'Devamrita Swami',
  'Speaker Completion',
  'ISKCON Swamis D to P',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F02_-_ISKCON_Swamis%2FISKCON_Swamis_-_D_to_P&q=f',
  null,
  array['devamrita swami', 'speaker completion', 'swamis'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'Explore Devamrita Swami Lectures');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'Explore Giriraj Swami Lectures',
  'Giriraj Swami',
  'Speaker Completion',
  'ISKCON Swamis D to P',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F02_-_ISKCON_Swamis%2FISKCON_Swamis_-_D_to_P&q=f',
  null,
  array['giriraj swami', 'speaker completion', 'swamis'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'Explore Giriraj Swami Lectures');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'Explore Gopal Krishna Goswami Lectures',
  'Gopal Krishna Goswami',
  'Speaker Completion',
  'ISKCON Swamis D to P',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F02_-_ISKCON_Swamis%2FISKCON_Swamis_-_D_to_P&q=f',
  null,
  array['gopal krishna goswami', 'speaker completion', 'swamis'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'Explore Gopal Krishna Goswami Lectures');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'Explore Gour Govinda Swami Lectures',
  'Gour Govinda Swami',
  'Speaker Completion',
  'ISKCON Swamis D to P',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F02_-_ISKCON_Swamis%2FISKCON_Swamis_-_D_to_P&q=f',
  null,
  array['gour govinda swami', 'speaker completion', 'swamis'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'Explore Gour Govinda Swami Lectures');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'Explore Guru Prasad Swami Lectures',
  'Guru Prasad Swami',
  'Speaker Completion',
  'ISKCON Swamis D to P',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F02_-_ISKCON_Swamis%2FISKCON_Swamis_-_D_to_P&q=f',
  null,
  array['guru prasad swami', 'speaker completion', 'swamis'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'Explore Guru Prasad Swami Lectures');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'Explore Indradyumna Swami Lectures',
  'Indradyumna Swami',
  'Speaker Completion',
  'ISKCON Swamis D to P',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F02_-_ISKCON_Swamis%2FISKCON_Swamis_-_D_to_P&q=f',
  null,
  array['indradyumna swami', 'speaker completion', 'swamis'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'Explore Indradyumna Swami Lectures');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'Explore Jayadvaita Swami Lectures',
  'Jayadvaita Swami',
  'Speaker Completion',
  'ISKCON Swamis D to P',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F02_-_ISKCON_Swamis%2FISKCON_Swamis_-_D_to_P&q=f',
  null,
  array['jayadvaita swami', 'speaker completion', 'swamis'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'Explore Jayadvaita Swami Lectures');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'Explore Jayapataka Swami Lectures',
  'Jayapataka Swami',
  'Speaker Completion',
  'ISKCON Swamis D to P',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F02_-_ISKCON_Swamis%2FISKCON_Swamis_-_D_to_P&q=f',
  null,
  array['jayapataka swami', 'speaker completion', 'swamis'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'Explore Jayapataka Swami Lectures');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'Explore Kadamba Kanana Swami Lectures',
  'Kadamba Kanana Swami',
  'Speaker Completion',
  'ISKCON Swamis D to P',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F02_-_ISKCON_Swamis%2FISKCON_Swamis_-_D_to_P&q=f',
  null,
  array['kadamba kanana swami', 'speaker completion', 'swamis'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'Explore Kadamba Kanana Swami Lectures');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'Explore Kavicandra Swami Lectures',
  'Kavicandra Swami',
  'Speaker Completion',
  'ISKCON Swamis D to P',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F02_-_ISKCON_Swamis%2FISKCON_Swamis_-_D_to_P&q=f',
  null,
  array['kavicandra swami', 'speaker completion', 'swamis'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'Explore Kavicandra Swami Lectures');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'Explore Lokanath Swami Lectures',
  'Lokanath Swami',
  'Speaker Completion',
  'ISKCON Swamis D to P',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F02_-_ISKCON_Swamis%2FISKCON_Swamis_-_D_to_P&q=f',
  null,
  array['lokanath swami', 'speaker completion', 'swamis'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'Explore Lokanath Swami Lectures');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'Explore Mukunda Goswami Lectures',
  'Mukunda Goswami',
  'Speaker Completion',
  'ISKCON Swamis D to P',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F02_-_ISKCON_Swamis%2FISKCON_Swamis_-_D_to_P&q=f',
  null,
  array['mukunda goswami', 'speaker completion', 'swamis'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'Explore Mukunda Goswami Lectures');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'Explore Radhanath Swami Lectures',
  'Radhanath Swami',
  'Speaker Completion',
  'ISKCON Swamis R to Y',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F02_-_ISKCON_Swamis%2FISKCON_Swamis_-_R_to_Y&q=f',
  null,
  array['radhanath swami', 'speaker completion', 'swamis'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'Explore Radhanath Swami Lectures');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'Explore Ravindra Svarupa Prabhu Lectures',
  'Ravindra Svarupa Prabhu',
  'Speaker Completion',
  'ISKCON Swamis R to Y',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F02_-_ISKCON_Swamis%2FISKCON_Swamis_-_R_to_Y&q=f',
  null,
  array['ravindra svarupa prabhu', 'speaker completion', 'swamis'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'Explore Ravindra Svarupa Prabhu Lectures');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'Explore Romapada Swami Lectures',
  'Romapada Swami',
  'Speaker Completion',
  'ISKCON Swamis R to Y',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F02_-_ISKCON_Swamis%2FISKCON_Swamis_-_R_to_Y&q=f',
  null,
  array['romapada swami', 'speaker completion', 'swamis'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'Explore Romapada Swami Lectures');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'Explore Sacinandana Swami Lectures',
  'Sacinandana Swami',
  'Speaker Completion',
  'ISKCON Swamis R to Y',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F02_-_ISKCON_Swamis%2FISKCON_Swamis_-_R_to_Y&q=f',
  null,
  array['sacinandana swami', 'speaker completion', 'swamis'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'Explore Sacinandana Swami Lectures');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'Explore Sivarama Swami Lectures',
  'Sivarama Swami',
  'Speaker Completion',
  'ISKCON Swamis R to Y',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F02_-_ISKCON_Swamis%2FISKCON_Swamis_-_R_to_Y&q=f',
  null,
  array['sivarama swami', 'speaker completion', 'swamis'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'Explore Sivarama Swami Lectures');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'Explore Tamala Krishna Goswami Lectures',
  'Tamala Krishna Goswami',
  'Speaker Completion',
  'ISKCON Swamis R to Y',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F02_-_ISKCON_Swamis%2FISKCON_Swamis_-_R_to_Y&q=f',
  null,
  array['tamala krishna goswami', 'speaker completion', 'swamis'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'Explore Tamala Krishna Goswami Lectures');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'Explore Trivikrama Swami Lectures',
  'Trivikrama Swami',
  'Speaker Completion',
  'ISKCON Swamis R to Y',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F02_-_ISKCON_Swamis%2FISKCON_Swamis_-_R_to_Y&q=f',
  null,
  array['trivikrama swami', 'speaker completion', 'swamis'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'Explore Trivikrama Swami Lectures');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'Explore Yadunandana Swami Lectures',
  'Yadunandana Swami',
  'Speaker Completion',
  'ISKCON Swamis R to Y',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F02_-_ISKCON_Swamis%2FISKCON_Swamis_-_R_to_Y&q=f',
  null,
  array['yadunandana swami', 'speaker completion', 'swamis'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'Explore Yadunandana Swami Lectures');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'Explore Aindra Prabhu Lectures',
  'Aindra Prabhu',
  'Speaker Completion',
  'ISKCON Prabhujis A to J',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F03_-_ISKCON_Prabhujis%2FISKCON_Prabhujis_-_A_to_J&q=f',
  null,
  array['aindra prabhu', 'speaker completion', 'prabhujis'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'Explore Aindra Prabhu Lectures');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'Explore Amogh Lila Prabhu Lectures',
  'Amogh Lila Prabhu',
  'Speaker Completion',
  'ISKCON Prabhujis A to J',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F03_-_ISKCON_Prabhujis%2FISKCON_Prabhujis_-_A_to_J&q=f',
  null,
  array['amogh lila prabhu', 'speaker completion', 'prabhujis'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'Explore Amogh Lila Prabhu Lectures');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'Explore Chaitanya Charan Prabhu Lectures',
  'Chaitanya Charan Prabhu',
  'Speaker Completion',
  'ISKCON Prabhujis A to J',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F03_-_ISKCON_Prabhujis%2FISKCON_Prabhujis_-_A_to_J&q=f',
  null,
  array['chaitanya charan prabhu', 'speaker completion', 'prabhujis'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'Explore Chaitanya Charan Prabhu Lectures');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'Explore Dravida Prabhu Lectures',
  'Dravida Prabhu',
  'Speaker Completion',
  'ISKCON Prabhujis A to J',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F03_-_ISKCON_Prabhujis%2FISKCON_Prabhujis_-_A_to_J&q=f',
  null,
  array['dravida prabhu', 'speaker completion', 'prabhujis'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'Explore Dravida Prabhu Lectures');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'Explore Bhurijana Prabhu Lectures',
  'Bhurijana Prabhu',
  'Speaker Completion',
  'ISKCON Prabhujis A to J',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F03_-_ISKCON_Prabhujis%2FISKCON_Prabhujis_-_A_to_J&q=f',
  null,
  array['bhurijana prabhu', 'speaker completion', 'prabhujis'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'Explore Bhurijana Prabhu Lectures');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'Explore Krishna Kshetra Prabhu Lectures',
  'Krishna Kshetra Prabhu',
  'Speaker Completion',
  'ISKCON Prabhujis K to R',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F03_-_ISKCON_Prabhujis%2FISKCON_Prabhujis_-_K_to_R&q=f',
  null,
  array['krishna kshetra prabhu', 'speaker completion', 'prabhujis'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'Explore Krishna Kshetra Prabhu Lectures');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'Explore Madhavananda Prabhu Lectures',
  'Madhavananda Prabhu',
  'Speaker Completion',
  'ISKCON Prabhujis K to R',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F03_-_ISKCON_Prabhujis%2FISKCON_Prabhujis_-_K_to_R&q=f',
  null,
  array['madhavananda prabhu', 'speaker completion', 'prabhujis'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'Explore Madhavananda Prabhu Lectures');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'Explore Navina Nirada Prabhu Lectures',
  'Navina Nirada Prabhu',
  'Speaker Completion',
  'ISKCON Prabhujis K to R',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F03_-_ISKCON_Prabhujis%2FISKCON_Prabhujis_-_K_to_R&q=f',
  null,
  array['navina nirada prabhu', 'speaker completion', 'prabhujis'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'Explore Navina Nirada Prabhu Lectures');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'Explore Radheshyam Prabhu Lectures',
  'Radheshyam Prabhu',
  'Speaker Completion',
  'ISKCON Prabhujis K to R',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F03_-_ISKCON_Prabhujis%2FISKCON_Prabhujis_-_K_to_R&q=f',
  null,
  array['radheshyam prabhu', 'speaker completion', 'prabhujis'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'Explore Radheshyam Prabhu Lectures');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'Explore Rupa Vilasa Prabhu Lectures',
  'Rupa Vilasa Prabhu',
  'Speaker Completion',
  'ISKCON Prabhujis K to R',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F03_-_ISKCON_Prabhujis%2FISKCON_Prabhujis_-_K_to_R&q=f',
  null,
  array['rupa vilasa prabhu', 'speaker completion', 'prabhujis'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'Explore Rupa Vilasa Prabhu Lectures');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'Explore Sankarsana Prabhu Lectures',
  'Sankarsana Prabhu',
  'Speaker Completion',
  'ISKCON Prabhujis S to Y',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F03_-_ISKCON_Prabhujis%2FISKCON_Prabhujis_-_S_to_Y&q=f',
  null,
  array['sankarsana prabhu', 'speaker completion', 'prabhujis'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'Explore Sankarsana Prabhu Lectures');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'Explore Suresvara Prabhu Lectures',
  'Suresvara Prabhu',
  'Speaker Completion',
  'ISKCON Prabhujis S to Y',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F03_-_ISKCON_Prabhujis%2FISKCON_Prabhujis_-_S_to_Y&q=f',
  null,
  array['suresvara prabhu', 'speaker completion', 'prabhujis'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'Explore Suresvara Prabhu Lectures');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'Explore Syamananda Prabhu Lectures',
  'Syamananda Prabhu',
  'Speaker Completion',
  'ISKCON Prabhujis S to Y',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F03_-_ISKCON_Prabhujis%2FISKCON_Prabhujis_-_S_to_Y&q=f',
  null,
  array['syamananda prabhu', 'speaker completion', 'prabhujis'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'Explore Syamananda Prabhu Lectures');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'Explore Vaisesika Prabhu Lectures',
  'Vaisesika Prabhu',
  'Speaker Completion',
  'ISKCON Prabhujis S to Y',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F03_-_ISKCON_Prabhujis%2FISKCON_Prabhujis_-_S_to_Y&q=f',
  null,
  array['vaisesika prabhu', 'speaker completion', 'prabhujis'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'Explore Vaisesika Prabhu Lectures');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'Explore Yadubara Prabhu Lectures',
  'Yadubara Prabhu',
  'Speaker Completion',
  'ISKCON Prabhujis S to Y',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F03_-_ISKCON_Prabhujis%2FISKCON_Prabhujis_-_S_to_Y&q=f',
  null,
  array['yadubara prabhu', 'speaker completion', 'prabhujis'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'Explore Yadubara Prabhu Lectures');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'ISKCON Chowpatty Yearly Classes — 2004',
  'ISKCON Chowpatty Speakers',
  'ISKCON Chowpatty',
  'Yearly Archive 2004',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F05_-_ISKCON_Chowpatty&q=f',
  null,
  array['chowpatty', '2004', 'yearly archive'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'ISKCON Chowpatty Yearly Classes — 2004');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'ISKCON Chowpatty Yearly Classes — 2005',
  'ISKCON Chowpatty Speakers',
  'ISKCON Chowpatty',
  'Yearly Archive 2005',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F05_-_ISKCON_Chowpatty&q=f',
  null,
  array['chowpatty', '2005', 'yearly archive'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'ISKCON Chowpatty Yearly Classes — 2005');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'ISKCON Chowpatty Yearly Classes — 2006',
  'ISKCON Chowpatty Speakers',
  'ISKCON Chowpatty',
  'Yearly Archive 2006',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F05_-_ISKCON_Chowpatty&q=f',
  null,
  array['chowpatty', '2006', 'yearly archive'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'ISKCON Chowpatty Yearly Classes — 2006');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'ISKCON Chowpatty Yearly Classes — 2007',
  'ISKCON Chowpatty Speakers',
  'ISKCON Chowpatty',
  'Yearly Archive 2007',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F05_-_ISKCON_Chowpatty&q=f',
  null,
  array['chowpatty', '2007', 'yearly archive'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'ISKCON Chowpatty Yearly Classes — 2007');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'ISKCON Chowpatty Yearly Classes — 2008',
  'ISKCON Chowpatty Speakers',
  'ISKCON Chowpatty',
  'Yearly Archive 2008',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F05_-_ISKCON_Chowpatty&q=f',
  null,
  array['chowpatty', '2008', 'yearly archive'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'ISKCON Chowpatty Yearly Classes — 2008');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'ISKCON Chowpatty Yearly Classes — 2009',
  'ISKCON Chowpatty Speakers',
  'ISKCON Chowpatty',
  'Yearly Archive 2009',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F05_-_ISKCON_Chowpatty&q=f',
  null,
  array['chowpatty', '2009', 'yearly archive'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'ISKCON Chowpatty Yearly Classes — 2009');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'ISKCON Chowpatty Yearly Classes — 2010',
  'ISKCON Chowpatty Speakers',
  'ISKCON Chowpatty',
  'Yearly Archive 2010',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F05_-_ISKCON_Chowpatty&q=f',
  null,
  array['chowpatty', '2010', 'yearly archive'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'ISKCON Chowpatty Yearly Classes — 2010');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'ISKCON Chowpatty Yearly Classes — 2011',
  'ISKCON Chowpatty Speakers',
  'ISKCON Chowpatty',
  'Yearly Archive 2011',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F05_-_ISKCON_Chowpatty&q=f',
  null,
  array['chowpatty', '2011', 'yearly archive'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'ISKCON Chowpatty Yearly Classes — 2011');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'ISKCON Chowpatty Yearly Classes — 2012',
  'ISKCON Chowpatty Speakers',
  'ISKCON Chowpatty',
  'Yearly Archive 2012',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F05_-_ISKCON_Chowpatty&q=f',
  null,
  array['chowpatty', '2012', 'yearly archive'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'ISKCON Chowpatty Yearly Classes — 2012');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'ISKCON Chowpatty Yearly Classes — 2013',
  'ISKCON Chowpatty Speakers',
  'ISKCON Chowpatty',
  'Yearly Archive 2013',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F05_-_ISKCON_Chowpatty&q=f',
  null,
  array['chowpatty', '2013', 'yearly archive'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'ISKCON Chowpatty Yearly Classes — 2013');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'ISKCON Chowpatty Yearly Classes — 2014',
  'ISKCON Chowpatty Speakers',
  'ISKCON Chowpatty',
  'Yearly Archive 2014',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F05_-_ISKCON_Chowpatty&q=f',
  null,
  array['chowpatty', '2014', 'yearly archive'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'ISKCON Chowpatty Yearly Classes — 2014');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'ISKCON Chowpatty Yearly Classes — 2015',
  'ISKCON Chowpatty Speakers',
  'ISKCON Chowpatty',
  'Yearly Archive 2015',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F05_-_ISKCON_Chowpatty&q=f',
  null,
  array['chowpatty', '2015', 'yearly archive'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'ISKCON Chowpatty Yearly Classes — 2015');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'ISKCON Chowpatty Yearly Classes — 2016',
  'ISKCON Chowpatty Speakers',
  'ISKCON Chowpatty',
  'Yearly Archive 2016',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F05_-_ISKCON_Chowpatty&q=f',
  null,
  array['chowpatty', '2016', 'yearly archive'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'ISKCON Chowpatty Yearly Classes — 2016');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'ISKCON Chowpatty Yearly Classes — 2017',
  'ISKCON Chowpatty Speakers',
  'ISKCON Chowpatty',
  'Yearly Archive 2017',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F05_-_ISKCON_Chowpatty&q=f',
  null,
  array['chowpatty', '2017', 'yearly archive'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'ISKCON Chowpatty Yearly Classes — 2017');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'ISKCON Chowpatty Yearly Classes — 2018',
  'ISKCON Chowpatty Speakers',
  'ISKCON Chowpatty',
  'Yearly Archive 2018',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F05_-_ISKCON_Chowpatty&q=f',
  null,
  array['chowpatty', '2018', 'yearly archive'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'ISKCON Chowpatty Yearly Classes — 2018');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'ISKCON Chowpatty Yearly Classes — 2019',
  'ISKCON Chowpatty Speakers',
  'ISKCON Chowpatty',
  'Yearly Archive 2019',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F05_-_ISKCON_Chowpatty&q=f',
  null,
  array['chowpatty', '2019', 'yearly archive'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'ISKCON Chowpatty Yearly Classes — 2019');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'ISKCON Chowpatty Yearly Classes — 2020',
  'ISKCON Chowpatty Speakers',
  'ISKCON Chowpatty',
  'Yearly Archive 2020',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F05_-_ISKCON_Chowpatty&q=f',
  null,
  array['chowpatty', '2020', 'yearly archive'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'ISKCON Chowpatty Yearly Classes — 2020');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'ISKCON Chowpatty Yearly Classes — 2021',
  'ISKCON Chowpatty Speakers',
  'ISKCON Chowpatty',
  'Yearly Archive 2021',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F05_-_ISKCON_Chowpatty&q=f',
  null,
  array['chowpatty', '2021', 'yearly archive'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'ISKCON Chowpatty Yearly Classes — 2021');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'ISKCON Chowpatty Yearly Classes — 2022',
  'ISKCON Chowpatty Speakers',
  'ISKCON Chowpatty',
  'Yearly Archive 2022',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F05_-_ISKCON_Chowpatty&q=f',
  null,
  array['chowpatty', '2022', 'yearly archive'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'ISKCON Chowpatty Yearly Classes — 2022');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'ISKCON Chowpatty Yearly Classes — 2023',
  'ISKCON Chowpatty Speakers',
  'ISKCON Chowpatty',
  'Yearly Archive 2023',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F05_-_ISKCON_Chowpatty&q=f',
  null,
  array['chowpatty', '2023', 'yearly archive'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'ISKCON Chowpatty Yearly Classes — 2023');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'ISKCON Chowpatty Yearly Classes — 2024',
  'ISKCON Chowpatty Speakers',
  'ISKCON Chowpatty',
  'Yearly Archive 2024',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F05_-_ISKCON_Chowpatty&q=f',
  null,
  array['chowpatty', '2024', 'yearly archive'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'ISKCON Chowpatty Yearly Classes — 2024');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'ISKCON Chowpatty Yearly Classes — 2025',
  'ISKCON Chowpatty Speakers',
  'ISKCON Chowpatty',
  'Yearly Archive 2025',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F05_-_ISKCON_Chowpatty&q=f',
  null,
  array['chowpatty', '2025', 'yearly archive'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'ISKCON Chowpatty Yearly Classes — 2025');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'ISKCON Chowpatty Yearly Classes — 2026',
  'ISKCON Chowpatty Speakers',
  'ISKCON Chowpatty',
  'Yearly Archive 2026',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F05_-_ISKCON_Chowpatty&q=f',
  null,
  array['chowpatty', '2026', 'yearly archive'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'ISKCON Chowpatty Yearly Classes — 2026');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'ISKCON Chowpatty — Bhajans',
  'ISKCON Chowpatty Speakers',
  'ISKCON Chowpatty',
  'Bhajans',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F05_-_ISKCON_Chowpatty&q=f',
  null,
  array['chowpatty', 'bhajans'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'ISKCON Chowpatty — Bhajans');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'ISKCON Chowpatty — Kirtan Fest',
  'ISKCON Chowpatty Speakers',
  'ISKCON Chowpatty',
  'Kirtan Fest',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F05_-_ISKCON_Chowpatty&q=f',
  null,
  array['chowpatty', 'kirtan fest'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'ISKCON Chowpatty — Kirtan Fest');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'ISKCON Chowpatty — Prerna',
  'ISKCON Chowpatty Speakers',
  'ISKCON Chowpatty',
  'Prerna',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F05_-_ISKCON_Chowpatty&q=f',
  null,
  array['chowpatty', 'prerna'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'ISKCON Chowpatty — Prerna');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'ISKCON Chowpatty — Chetana',
  'ISKCON Chowpatty Speakers',
  'ISKCON Chowpatty',
  'Chetana',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F05_-_ISKCON_Chowpatty&q=f',
  null,
  array['chowpatty', 'chetana'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'ISKCON Chowpatty — Chetana');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'ISKCON Chowpatty — Seminars',
  'ISKCON Chowpatty Speakers',
  'ISKCON Chowpatty',
  'Seminars',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F05_-_ISKCON_Chowpatty&q=f',
  null,
  array['chowpatty', 'seminars'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'ISKCON Chowpatty — Seminars');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'ISKCON Chowpatty — Festivals',
  'ISKCON Chowpatty Speakers',
  'ISKCON Chowpatty',
  'Festivals',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F05_-_ISKCON_Chowpatty&q=f',
  null,
  array['chowpatty', 'festivals'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'ISKCON Chowpatty — Festivals');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'ISKCON Chowpatty — Yatra',
  'ISKCON Chowpatty Speakers',
  'ISKCON Chowpatty',
  'Yatra',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F05_-_ISKCON_Chowpatty&q=f',
  null,
  array['chowpatty', 'yatra'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'ISKCON Chowpatty — Yatra');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'ISKCON Vrindavan Archive Source',
  'ISKCON Vrindavan Speakers',
  'ISKCON Centers',
  'Temple Archive',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F06_-_More&q=f',
  null,
  array['iskcon vrindavan', 'temple archive'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'ISKCON Vrindavan Archive Source');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'ISKCON Mayapur Archive Source',
  'ISKCON Mayapur Speakers',
  'ISKCON Centers',
  'Temple Archive',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F06_-_More&q=f',
  null,
  array['iskcon mayapur', 'temple archive'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'ISKCON Mayapur Archive Source');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'ISKCON Pune Archive Source',
  'ISKCON Pune Speakers',
  'ISKCON Centers',
  'Temple Archive',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F06_-_More&q=f',
  null,
  array['iskcon pune', 'temple archive'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'ISKCON Pune Archive Source');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'ISKCON Juhu Mumbai Archive Source',
  'ISKCON Juhu Mumbai Speakers',
  'ISKCON Centers',
  'Temple Archive',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F06_-_More&q=f',
  null,
  array['iskcon juhu mumbai', 'temple archive'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'ISKCON Juhu Mumbai Archive Source');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'ISKCON Alachua Archive Source',
  'ISKCON Alachua Speakers',
  'ISKCON Centers',
  'Temple Archive',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F06_-_More&q=f',
  null,
  array['iskcon alachua', 'temple archive'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'ISKCON Alachua Archive Source');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'ISKCON London Archive Source',
  'ISKCON London Speakers',
  'ISKCON Centers',
  'Temple Archive',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F06_-_More&q=f',
  null,
  array['iskcon london', 'temple archive'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'ISKCON London Archive Source');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'ISKCON Los Angeles Archive Source',
  'ISKCON Los Angeles Speakers',
  'ISKCON Centers',
  'Temple Archive',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F06_-_More&q=f',
  null,
  array['iskcon los angeles', 'temple archive'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'ISKCON Los Angeles Archive Source');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'ISKCON Melbourne Archive Source',
  'ISKCON Melbourne Speakers',
  'ISKCON Centers',
  'Temple Archive',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F06_-_More&q=f',
  null,
  array['iskcon melbourne', 'temple archive'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'ISKCON Melbourne Archive Source');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'ISKCON Singapore Archive Source',
  'ISKCON Singapore Speakers',
  'ISKCON Centers',
  'Temple Archive',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F06_-_More&q=f',
  null,
  array['iskcon singapore', 'temple archive'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'ISKCON Singapore Archive Source');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'ISKCON Tirupati Archive Source',
  'ISKCON Tirupati Speakers',
  'ISKCON Centers',
  'Temple Archive',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F06_-_More&q=f',
  null,
  array['iskcon tirupati', 'temple archive'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'ISKCON Tirupati Archive Source');

insert into public.lectures
(title, speaker, category, series, duration_minutes, language, source_name, source_url, youtube_url, tags, difficulty_level)
select
  'ISKCON Vapi Archive Source',
  'ISKCON Vapi Speakers',
  'ISKCON Centers',
  'Temple Archive',
  0,
  'Mixed',
  'ISKCON Desire Tree Audio',
  'https://audio.iskcondesiretree.com/index.php?f=%2F06_-_More&q=f',
  null,
  array['iskcon vapi', 'temple archive'],
  'All Levels'
where not exists (select 1 from public.lectures where title = 'ISKCON Vapi Archive Source');
