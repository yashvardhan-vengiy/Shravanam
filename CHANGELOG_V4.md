# Shravanam V4 — Vercel npm install fix

This release fixes the Vercel deployment issue:

```txt
npm error Exit handler never called!
Error: Command "npm install" exited with 1
```

## What changed

- Removed `package-lock.json` from the project.
- Added `packageManager: pnpm@10.12.1` to `package.json`.
- Added Node engine setting: `node: 20.x`.
- Added `vercel.json` so Vercel uses pnpm instead of npm:

```json
{
  "framework": "nextjs",
  "installCommand": "corepack enable && pnpm install --no-frozen-lockfile",
  "buildCommand": "pnpm build"
}
```

## Why

The failure was not caused by Shravanam code. It happened during dependency installation inside npm. Using pnpm avoids that npm install bug.

## Important

Do not upload `node_modules`, `.next`, `.env.local`, `.vercel`, or any old lock file.
