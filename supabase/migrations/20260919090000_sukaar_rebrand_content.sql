begin;

-- Sukaar Welfare Organization rebrand and content foundation.
-- This is a forward migration so the historical POEM migrations remain immutable.

alter table public.site_content_settings
  alter column organization_name set default 'Sukaar Welfare Organization',
  alter column short_name set default 'Sukaar',
  alter column tagline set default 'Hope for Change.',
  alter column city set default 'Umerkot',
  alter column province set default 'Sindh',
  alter column country set default 'Pakistan',
  alter column homepage_eyebrow set default 'Community development across Sindh',
  alter column homepage_title set default 'Empowering communities. Advancing rights. Creating opportunity.',
  alter column homepage_description set default 'Sukaar Welfare Organization works with women, children, youth and underserved communities across education, health, livelihoods, human rights, resilience and community development.',
  alter column homepage_primary_label set default 'Explore our work',
  alter column homepage_primary_href set default '/projects',
  alter column homepage_secondary_label set default 'About Sukaar',
  alter column homepage_secondary_href set default '/about',
  alter column seo_title set default 'Sukaar Welfare Organization | Sindh, Pakistan',
  alter column seo_description set default 'Sukaar Welfare Organization is a Sindh-based non-profit working in education, health, livelihoods, human rights, youth and women empowerment, resilience and community development.';

insert into public.site_content_settings (
  id,
  organization_name,
  short_name,
  tagline,
  address,
  city,
  province,
  country,
  phone,
  email,
  facebook_url,
  homepage_eyebrow,
  homepage_title,
  homepage_description,
  homepage_primary_label,
  homepage_primary_href,
  homepage_secondary_label,
  homepage_secondary_href,
  seo_title,
  seo_description
)
values (
  1,
  'Sukaar Welfare Organization',
  'Sukaar',
  'Hope for Change.',
  'Near Abdul Malik Kiryana Store, Govt. Boys College Road',
  'Umerkot',
  'Sindh',
  'Pakistan',
  '+92 333 2978960',
  'sukaar.org.pk@gmail.com',
  'https://www.facebook.com/Sukaarwelfareorganization',
  'Community development across Sindh',
  'Empowering communities. Advancing rights. Creating opportunity.',
  'Sukaar Welfare Organization works with women, children, youth and underserved communities across education, health, livelihoods, human rights, resilience and community development.',
  'Explore our work',
  '/projects',
  'About Sukaar',
  '/about',
  'Sukaar Welfare Organization | Sindh, Pakistan',
  'Sukaar Welfare Organization is a Sindh-based non-profit working in education, health, livelihoods, human rights, youth and women empowerment, resilience and community development.'
)
on conflict (id) do update set
  organization_name = excluded.organization_name,
  short_name = excluded.short_name,
  tagline = excluded.tagline,
  address = excluded.address,
  city = excluded.city,
  province = excluded.province,
  country = excluded.country,
  phone = excluded.phone,
  email = excluded.email,
  facebook_url = excluded.facebook_url,
  homepage_eyebrow = excluded.homepage_eyebrow,
  homepage_title = excluded.homepage_title,
  homepage_description = excluded.homepage_description,
  homepage_primary_label = excluded.homepage_primary_label,
  homepage_primary_href = excluded.homepage_primary_href,
  homepage_secondary_label = excluded.homepage_secondary_label,
  homepage_secondary_href = excluded.homepage_secondary_href,
  seo_title = excluded.seo_title,
  seo_description = excluded.seo_description;

-- Retire the original generic starter programs from public display.
update public.programs
set published = false
where slug in (
  'education-youth',
  'livelihoods-skills',
  'community-empowerment',
  'resilience-development'
);

insert into public.programs
  (slug, title, short_title, summary, description, focus, display_order, published)
values
  (
    'education-child-development',
    'Education & Child Development',
    'Education',
    'Promoting basic education, girls'' education, literacy, early learning and community-based learning opportunities.',
    'Sukaar supports education and child development through literacy promotion, school and community learning initiatives, temporary learning centres, surveys and advocacy for inclusive access to education.',
    array['Basic education and literacy','Girls'' education','Early learning and school support','Child rights and protection awareness'],
    10,
    true
  ),
  (
    'health-nutrition',
    'Health & Nutrition',
    'Health',
    'Supporting maternal and child health, nutrition, immunization and community health awareness.',
    'Sukaar''s health work includes maternal and child health, nutrition and food security, childhood immunization, malaria and typhoid awareness, and community mobilization for better health outcomes.',
    array['Maternal and child health','Nutrition and food security','Immunization and disease prevention','Community health awareness'],
    20,
    true
  ),
  (
    'women-gender-empowerment',
    'Women & Gender Empowerment',
    'Women & Gender',
    'Advancing women''s participation, leadership, rights and protection from discrimination and harmful practices.',
    'Sukaar works with women, girls and communities to strengthen leadership, participation, gender equality, awareness of rights and prevention of harmful practices including child marriage and gender-based violence.',
    array['Women''s leadership and participation','Gender equality','Child marriage prevention','Gender-based violence awareness'],
    30,
    true
  ),
  (
    'youth-development',
    'Youth Development',
    'Youth',
    'Building youth leadership, civic participation, practical skills and pathways to opportunity.',
    'Sukaar engages young people through leadership development, civic participation, skills enhancement, career support and advocacy so youth can contribute as active agents of change.',
    array['Youth leadership','Civic participation','Skills enhancement','Career and livelihood pathways'],
    40,
    true
  ),
  (
    'human-rights-governance',
    'Human Rights & Governance',
    'Rights & Governance',
    'Promoting rights awareness, transparency, social accountability, minority rights and inclusive governance.',
    'Sukaar combines community awareness, advocacy, social accountability and civic engagement to promote human rights, minority rights, transparency, access to information and inclusive governance.',
    array['Human and minority rights','Transparency and accountability','Right to information','Inclusive governance and civic engagement'],
    50,
    true
  ),
  (
    'livelihoods-agriculture',
    'Livelihoods & Agriculture',
    'Livelihoods',
    'Supporting rural livelihoods, skills, agriculture and income-generating opportunities for underserved communities.',
    'Sukaar supports small farmers, women and youth through agriculture-related advocacy, vocational skills, income-generating opportunities and initiatives that strengthen sustainable livelihoods.',
    array['Rural poverty reduction','Agriculture and farmer rights','Vocational skills','Income-generating opportunities'],
    60,
    true
  ),
  (
    'climate-disaster-response',
    'Climate, Environment & Disaster Response',
    'Resilience',
    'Strengthening preparedness, environmental stewardship and humanitarian response for vulnerable communities.',
    'Sukaar works on disaster risk reduction, emergency response, environmental conservation and community resilience, including support to families and temporary learning during crises.',
    array['Disaster risk reduction','Emergency and flood response','Environmental conservation','Community resilience'],
    70,
    true
  ),
  (
    'research-surveys-community-mobilization',
    'Research, Surveys & Community Mobilization',
    'Research & Surveys',
    'Delivering field research, survey implementation, data collection, social mobilization and community outreach.',
    'Sukaar has implemented education, health and governance-related surveys and field assignments across multiple districts of Sindh, supported by community mobilization and local stakeholder engagement.',
    array['Field surveys and data collection','Community mobilization','Research support','Stakeholder outreach'],
    80,
    true
  )
on conflict (slug) do update set
  title = excluded.title,
  short_title = excluded.short_title,
  summary = excluded.summary,
  description = excluded.description,
  focus = excluded.focus,
  display_order = excluded.display_order,
  published = excluded.published;

-- Retire the generic demo projects inherited from the source application.
update public.projects
set published = false,
    featured = false
where slug in (
  'youth-skills-economic-empowerment',
  'inclusive-community-learning',
  'community-led-development'
);

insert into public.projects (
  program_id,
  slug,
  title,
  category,
  summary,
  challenge,
  response,
  outcomes,
  status,
  location,
  district,
  province,
  start_date,
  end_date,
  donor_partner,
  featured,
  published
)
select
  p.id,
  'young-omang-child-marriage-advocacy-2024',
  'Young Omang: Child Marriage Advocacy Campaign',
  'Human Rights & Governance',
  'A 2024 advocacy campaign in Umerkot on early and forced child marriage, focused on awareness and implementation of the Sindh Child Marriage Restraint Act 2013.',
  'The initiative addressed early and forced child marriage through community awareness and implementation-focused advocacy.',
  'Sukaar implemented the campaign under Young Omang Pakistan with Indus Resource Centre and Chanan Development Association during 2024.',
  array['Community advocacy and awareness around the Sindh Child Marriage Restraint Act 2013','Local engagement on prevention of early and forced child marriage'],
  'completed',
  'Umerkot, Sindh',
  'Umerkot',
  'Sindh',
  date '2024-01-01',
  date '2024-12-31',
  'Indus Resource Centre (IRC) and Chanan Development Association (CDA)',
  true,
  true
from public.programs p
where p.slug = 'human-rights-governance'
on conflict (slug) do update set
  program_id = excluded.program_id,
  title = excluded.title,
  category = excluded.category,
  summary = excluded.summary,
  challenge = excluded.challenge,
  response = excluded.response,
  outcomes = excluded.outcomes,
  status = excluded.status,
  location = excluded.location,
  district = excluded.district,
  province = excluded.province,
  start_date = excluded.start_date,
  end_date = excluded.end_date,
  donor_partner = excluded.donor_partner,
  featured = excluded.featured,
  published = excluded.published;

insert into public.projects (
  program_id,
  slug,
  title,
  category,
  summary,
  challenge,
  response,
  outcomes,
  status,
  location,
  district,
  province,
  start_date,
  end_date,
  donor_partner,
  featured,
  published
)
select
  p.id,
  'power-to-the-youth-2022-2024',
  'Power to the Youth',
  'Youth Development',
  'A Norwegian Church Aid-supported initiative strengthening youth activism, inclusive governance and social accountability from September 2022 to December 2024.',
  'The project focused on strengthening youth participation and civil society engagement in inclusive governance and social accountability.',
  'Sukaar supported youth activism, stakeholder engagement, advocacy and outreach while strengthening the role of civil society in governance processes.',
  array['Youth activism and participation supported','Civil society engagement on inclusive governance strengthened','Advocacy and outreach activities delivered'],
  'completed',
  'Mirpurkhas, Sindh',
  'Mirpurkhas',
  'Sindh',
  date '2022-09-01',
  date '2024-12-31',
  'Norwegian Church Aid',
  true,
  true
from public.programs p
where p.slug = 'youth-development'
on conflict (slug) do update set
  program_id = excluded.program_id,
  title = excluded.title,
  category = excluded.category,
  summary = excluded.summary,
  challenge = excluded.challenge,
  response = excluded.response,
  outcomes = excluded.outcomes,
  status = excluded.status,
  location = excluded.location,
  district = excluded.district,
  province = excluded.province,
  start_date = excluded.start_date,
  end_date = excluded.end_date,
  donor_partner = excluded.donor_partner,
  featured = excluded.featured,
  published = excluded.published;

insert into public.projects (
  program_id,
  slug,
  title,
  category,
  summary,
  challenge,
  response,
  outcomes,
  status,
  location,
  district,
  province,
  donor_partner,
  featured,
  published
)
select
  p.id,
  'flood-response-umerkot-2022',
  'Flood Response Activities 2022',
  'Climate & Disaster Response',
  'Emergency support for flood-affected families and children in Umerkot, including temporary learning and food assistance.',
  'Flood-affected families and children required immediate learning continuity and basic humanitarian support.',
  'Sukaar supported temporary learning centres and direct assistance for families and children in displacement settings.',
  array['2 temporary learning centres established','158 students enrolled in temporary learning centres','530 families provided cooked food','170 pairs of shoes, chocolates and gifts distributed to students'],
  'completed',
  'Umerkot, Sindh',
  'Umerkot',
  'Sindh',
  '',
  true,
  true
from public.programs p
where p.slug = 'climate-disaster-response'
on conflict (slug) do update set
  program_id = excluded.program_id,
  title = excluded.title,
  category = excluded.category,
  summary = excluded.summary,
  challenge = excluded.challenge,
  response = excluded.response,
  outcomes = excluded.outcomes,
  status = excluded.status,
  location = excluded.location,
  district = excluded.district,
  province = excluded.province,
  donor_partner = excluded.donor_partner,
  featured = excluded.featured,
  published = excluded.published;

insert into public.partners
  (name, slug, partner_type, description, display_order, featured, published)
values
  ('Transparency International Pakistan', 'transparency-international-pakistan', 'ngo', 'Partner on transparency, anti-corruption and governance-related activities.', 10, true, true),
  ('Indus Resource Centre', 'indus-resource-centre', 'ngo', 'Partner on the Young Omang child marriage advocacy initiative.', 20, true, true),
  ('Chanan Development Association', 'chanan-development-association', 'ngo', 'Partner on the Young Omang child marriage advocacy initiative.', 30, true, true),
  ('Norwegian Church Aid', 'norwegian-church-aid', 'ingo', 'Partner on the Power to the Youth project.', 40, true, true),
  ('Idara-e-Taleem-o-Aagahi', 'idara-e-taleem-o-aagahi', 'ngo', 'Partner on education surveys, early learning and enrollment-related initiatives.', 50, true, true),
  ('National Rural Support Programme', 'national-rural-support-programme', 'ngo', 'Partner on community malaria awareness under the GFATM malaria project.', 60, true, true),
  ('Right To Play International', 'right-to-play-international', 'ingo', 'Partner on play-based quality education in Umerkot.', 70, true, true),
  ('Civil Society Human & Institutional Development Programme', 'chip-pakistan', 'ngo', 'Partner on community engagement for childhood immunization.', 80, true, true)
on conflict (slug) do update set
  name = excluded.name,
  partner_type = excluded.partner_type,
  description = excluded.description,
  display_order = excluded.display_order,
  featured = excluded.featured,
  published = excluded.published;

commit;
