# Sukaar Profile Completion

This patch maps the supplied 18-page Sukaar Welfare Organization profile into the public website and existing CMS schema.

## Added
- Full organization-profile page at `/about/profile`.
- Registration facts, mission, vision, overall goal, strategies, target participants and specific objectives.
- Seven-member Board of Directors plus Executive Director, without CNIC or personal phone disclosure.
- Full networks/memberships list from the supplied profile.
- Project/activity portfolio from 2014–2024 plus additional project-like activities documented in the narrative sections.
- Advocacy and awareness campaign record.
- Profile reference links for news clippings, gallery and policies.
- Database seed/upsert migration for projects, partners/networks and team/board.
- Static fallbacks so profile projects, partners and board remain visible before Supabase is configured.

## Intentionally excluded from public pages
- Board-member CNIC numbers.
- Board-member personal mobile numbers.
- Bank account and IBAN details.

These can be handled later through controlled administrative or donation settings if required.
