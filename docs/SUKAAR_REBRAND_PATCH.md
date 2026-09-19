# Sukaar Clean Rebrand Patch

This rebrand is built directly against the clean `poem-web-review(1).zip` snapshot.

## Design rule

The proven POEM visual geometry and theme are intentionally preserved:

- 1180px content container
- navbar/header proportions
- campaign banner proportions
- hero spacing, heading scale and grid
- section spacing and responsive behavior
- original deep-green / lime design tokens

Only organization identity, content, logo, metadata, package/local-project identity, and Sukaar-specific database seed/default content are changed.

## Architecture rule

Admin CMS, RBAC/RLS, Fundraising & Grants, Impact, Media, Careers, Tenders, audit/security architecture, and historical migrations are preserved.

A new forward migration applies Sukaar content/defaults without rewriting migration history.
