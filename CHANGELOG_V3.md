# Shravanam V3 — ISKCON Desire Tree Audio Source Hub

Changes:

- Added `/sources` page requiring Google login.
- Added source hub cards for the public ISKCON Desire Tree Audio archive structure.
- Added `database/seed_idt_source_catalog.sql` with external source tracking records.
- Updated homepage copy to clarify Shravanam is a tracker above external sources.
- Added Source Hub navigation link.
- Changed source buttons for ISKCON Desire Tree entries to say `Open on ISKCON Desire Tree`.
- Renamed `middleware.ts` to `proxy.ts` for newer Next.js convention.

Still intentionally excluded:

- audio player
- play button
- MP3 streaming
- Supabase Storage
- audio upload
- resume playback tracking
