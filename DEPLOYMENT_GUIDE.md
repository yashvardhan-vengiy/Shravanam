# Shravanam Simple Upload and Deployment Guide

## What this ZIP contains

This ZIP contains a complete Shravanam starter website.

It includes:

- Next.js app code
- Supabase connection files
- Google login flow
- Lecture library
- Dashboard
- Hearing lists
- Reflection system
- Admin lecture form
- Supabase SQL database file

It does not include:

- audio player
- play button
- audio upload
- Supabase Storage bucket
- MP3 streaming
- node_modules

## What to upload to GitHub

Upload the full extracted folder contents to GitHub:

```txt
.env.example
.gitignore
README.md
DEPLOYMENT_GUIDE.md
package.json
next.config.ts
postcss.config.mjs
tailwind.config.ts
tsconfig.json
database/
src/
```

Do not upload:

```txt
.env.local
node_modules/
.next/
.vercel/
```

These are already blocked in `.gitignore`.

## Step 1 — Create GitHub Repository

Create a new GitHub repository named:

```txt
shravanam
```

Then upload all files from the extracted ZIP.

## Step 2 — Create Supabase Project

Create a Supabase project.

Go to:

```txt
Supabase → SQL Editor
```

Open:

```txt
database/schema.sql
```

Copy all SQL and run it.

Then add your Gmail as admin:

```sql
insert into public.admin_emails (email)
values ('your-email@gmail.com')
on conflict do nothing;
```

Use the same Gmail you will use for Google login.

## Step 3 — Add Supabase Keys

Go to:

```txt
Supabase → Project Settings → API
```

Copy:

```txt
Project URL
anon public key
```

## Step 4 — Local Testing

Create `.env.local` in the main project folder:

```env
NEXT_PUBLIC_SUPABASE_URL=your_project_url
NEXT_PUBLIC_SUPABASE_ANON_KEY=your_anon_key
```

Run:

```bash
npm install
npm run dev
```

Open:

```txt
http://localhost:3000
```

## Step 5 — Deploy to Vercel

Go to Vercel.

Choose:

```txt
Add New Project → Import GitHub Repository → shravanam
```

Add environment variables:

```env
NEXT_PUBLIC_SUPABASE_URL=your_project_url
NEXT_PUBLIC_SUPABASE_ANON_KEY=your_anon_key
```

Click Deploy.

## Step 6 — Fix Google Login Redirect

After Vercel deploys, copy your live URL, for example:

```txt
https://shravanam.vercel.app
```

In Supabase go to:

```txt
Authentication → URL Configuration
```

Set Site URL:

```txt
https://shravanam.vercel.app
```

Add Redirect URLs:

```txt
http://localhost:3000/auth/callback
https://shravanam.vercel.app/auth/callback
https://*.vercel.app/auth/callback
```

## Step 7 — Enable Google Login

In Supabase go to:

```txt
Authentication → Providers → Google
```

Enable Google provider.

In Google Cloud Console, add this redirect URI:

```txt
https://YOUR_SUPABASE_PROJECT_ID.supabase.co/auth/v1/callback
```

## Step 8 — Use Admin Page

Login with your admin Gmail.

Open:

```txt
/admin
```

Add lecture metadata and external links.

Remember: use source links only. Do not upload audio.

## Final Rule

Shravanam should behave like Goodreads for devotional lectures, not Spotify.

The lecture remains on external websites. Shravanam only tracks progress, notes, lists, streaks, and analytics.

## Optional Step — Add Bigger Lecture Catalog

If your site is showing only one or a few lectures, it means you have only inserted small sample data.

To add the larger starter catalog:

1. Open Supabase.
2. Go to SQL Editor.
3. Open the file:

```txt
database/seed_rigorous_catalog.sql
```

4. Copy all SQL from that file.
5. Run it in Supabase.
6. Refresh your website.

This will add many starter lecture metadata rows across multiple categories and speakers.

The exact audio remains outside Shravanam. Replace placeholder external links with exact ISKCON Desire Tree, YouTube, Google Drive, Archive.org, SoundCloud, or temple website links.

## Login Requirement

In this version, Google login is required before users can access the lecture library and personal tracker pages.

Public:

```txt
/
/login
/auth/callback
```

Login required:

```txt
/lectures
/lectures/[id]
/dashboard
/lists
/profile
/admin
```


## V3 Source Catalog Setup

To use the ISKCON Desire Tree Audio source hub:

1. Deploy the updated code.
2. Go to Supabase → SQL Editor.
3. Run `database/schema.sql` first if not already done.
4. Run `database/seed_idt_source_catalog.sql`.
5. Visit `/sources` after Google login.

The source hub opens external archive folders only. Shravanam does not play or host the audio.
