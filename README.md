# Sukaar Welfare Organization Website

Public website and administration CMS for **Sukaar Welfare Organization (SWO), Sindh, Pakistan**.

## Stack

- Next.js 16 / React 19 / TypeScript
- Tailwind CSS 4
- Supabase Auth, Postgres and Storage
- Public content, projects, programs, partners, stories, news, impact, fundraising and resources
- Protected administration workspace

## Local development

```bash
npm ci
cp .env.example .env.local
npm run dev
```

Open `http://localhost:3000`.

## Supabase

This repository preserves the historical migrations inherited from the source application and adds forward Sukaar migrations on top. Do not rewrite already-applied migrations.

Before running a cloud migration, verify that the CLI is linked to the **Sukaar** Supabase project, not the original POEM project.

```bash
npx supabase status
npx supabase migration list
npx supabase db push
```

## Rebranding

The Sukaar rebrand uses the organization's purple / yellow identity and the emblem extracted from the supplied organization profile. Public-facing copy is based on the supplied Sukaar organization profile and can be refined through the Admin CMS after deployment.
