# Shravanam — Devotional Hearing Dashboard

Shravanam is a tracker-only devotional hearing dashboard.

It does **not** play, upload, stream, host, or store audio files. It works like Goodreads for devotional lectures: users open trusted external sources, then manually track progress, notes, reflections, lists, and completion.

## Features included

- Google login with Supabase Auth
- Lecture library with external source links
- `Open Lecture` button only; no play button
- Manual progress tracking
- Mark as Heard / Completed
- Save for Later
- Add to Hearing List
- Write Reflection
- Dashboard analytics
- Profile daily hearing target
- Admin lecture submission page
- Supabase PostgreSQL database schema
- Row Level Security policies

## What to upload to GitHub

Upload the contents of this folder:

```txt
package.json
src/
database/
README.md
.env.example
.gitignore
next.config.ts
tsconfig.json
tailwind.config.ts
postcss.config.mjs
```

Do **not** upload `.env.local`.

## Local setup

1. Install dependencies:

```bash
npm install
```

2. Create `.env.local` in the root folder:

```env
NEXT_PUBLIC_SUPABASE_URL=https://your-project-id.supabase.co
NEXT_PUBLIC_SUPABASE_ANON_KEY=your-supabase-anon-key
```

3. Run:

```bash
npm run dev
```

Open:

```txt
http://localhost:3000
```

## Supabase setup

1. Create a Supabase project.
2. Open Supabase SQL Editor.
3. Run `database/schema.sql`.
4. In the SQL file, replace the sample admin email with your own Gmail address before running the admin insert line.
5. Enable Google provider in Supabase Auth.
6. Add redirect URLs:

```txt
http://localhost:3000/auth/callback
https://your-vercel-domain.vercel.app/auth/callback
https://*.vercel.app/auth/callback
```

## Vercel deployment

1. Push this folder to GitHub.
2. Import the GitHub repository in Vercel.
3. Add Environment Variables in Vercel:

```env
NEXT_PUBLIC_SUPABASE_URL=https://your-project-id.supabase.co
NEXT_PUBLIC_SUPABASE_ANON_KEY=your-supabase-anon-key
```

4. Deploy.
5. Copy the deployed Vercel URL.
6. Add it to Supabase Auth URL Configuration.

## Important rule

Shravanam does not host or play lectures. It helps devotees organize, open, track, complete, and reflect on devotional hearing from trusted external sources such as ISKCON Desire Tree, YouTube, Google Drive, Archive.org, SoundCloud, and temple websites.
