begin;

-- Sukaar profile completion. Source: supplied 18-page organization profile.
-- Sensitive personal CNIC numbers and bank-account details are intentionally not published.

insert into public.projects (program_id,slug,title,category,summary,challenge,response,outcomes,status,location,district,province,start_date,end_date,donor_partner,featured,published)
values ((select id from public.programs where slug = 'human-rights-governance' limit 1),'international-whistleblowers-day-2024','International Whistleblowers Day 2024','Human Rights & Governance','A short-term Umerkot activity marking International Whistleblowers Day 2024 with Transparency International Pakistan.','','Sukaar Welfare Organization implemented the activity in Umerkot with Transparency International Pakistan.','{}'::text[],'completed','Umerkot, Sindh','Umerkot','Sindh',null,null,'Transparency International Pakistan',false,true)
on conflict (slug) do update set program_id=excluded.program_id,title=excluded.title,category=excluded.category,summary=excluded.summary,challenge=excluded.challenge,response=excluded.response,outcomes=excluded.outcomes,status=excluded.status,location=excluded.location,district=excluded.district,province=excluded.province,start_date=excluded.start_date,end_date=excluded.end_date,donor_partner=excluded.donor_partner,featured=excluded.featured,published=excluded.published;

insert into public.projects (program_id,slug,title,category,summary,challenge,response,outcomes,status,location,district,province,start_date,end_date,donor_partner,featured,published)
values ((select id from public.programs where slug = 'human-rights-governance' limit 1),'young-omang-child-marriage-advocacy-2024','Young Omang: Child Marriage Advocacy Campaign','Human Rights & Governance','A 2024 advocacy campaign on early and forced child marriage through implementation of the Sindh Child Marriage Restraint Act 2013.','The organization profile identifies early and forced child marriage as the focus of this advocacy campaign.','Sukaar implemented the Young Omang campaign in Umerkot with Indus Resource Centre and Chanan Development Association Pakistan.',array['Community advocacy and awareness around the Sindh Child Marriage Restraint Act 2013.']::text[],'completed','Umerkot, Sindh','Umerkot','Sindh','2024-01-01','2024-12-31','Indus Resource Centre (IRC) and Chanan Development Association (CDA) Pakistan',true,true)
on conflict (slug) do update set program_id=excluded.program_id,title=excluded.title,category=excluded.category,summary=excluded.summary,challenge=excluded.challenge,response=excluded.response,outcomes=excluded.outcomes,status=excluded.status,location=excluded.location,district=excluded.district,province=excluded.province,start_date=excluded.start_date,end_date=excluded.end_date,donor_partner=excluded.donor_partner,featured=excluded.featured,published=excluded.published;

insert into public.projects (program_id,slug,title,category,summary,challenge,response,outcomes,status,location,district,province,start_date,end_date,donor_partner,featured,published)
values ((select id from public.programs where slug = 'human-rights-governance' limit 1),'international-anti-corruption-day-2023','International Anti-Corruption Day 2023','Human Rights & Governance','A short-term Umerkot activity marking International Anti-Corruption Day 2023 with Transparency International Pakistan.','','Sukaar Welfare Organization implemented the activity in Umerkot with Transparency International Pakistan.','{}'::text[],'completed','Umerkot, Sindh','Umerkot','Sindh',null,null,'Transparency International Pakistan',false,true)
on conflict (slug) do update set program_id=excluded.program_id,title=excluded.title,category=excluded.category,summary=excluded.summary,challenge=excluded.challenge,response=excluded.response,outcomes=excluded.outcomes,status=excluded.status,location=excluded.location,district=excluded.district,province=excluded.province,start_date=excluded.start_date,end_date=excluded.end_date,donor_partner=excluded.donor_partner,featured=excluded.featured,published=excluded.published;

insert into public.projects (program_id,slug,title,category,summary,challenge,response,outcomes,status,location,district,province,start_date,end_date,donor_partner,featured,published)
values ((select id from public.programs where slug = 'research-surveys-community-mobilization' limit 1),'aser-pak-2023-rural-urban','Annual Status of Education Report (ASER-Pak) 2023 — Rural & Urban','Research & Surveys','Education survey work for ASER-Pak 2023 across rural and urban areas in multiple Karachi districts.','','Sukaar provided field survey and data collection support with Idara-e-Taleem-o-Aagahi.','{}'::text[],'completed','Karachi Malir, Korangi, West, Central and East, Sindh','Karachi','Sindh','2023-11-01',null,'Idara-e-Taleem-o-Aagahi (ITA)',true,true)
on conflict (slug) do update set program_id=excluded.program_id,title=excluded.title,category=excluded.category,summary=excluded.summary,challenge=excluded.challenge,response=excluded.response,outcomes=excluded.outcomes,status=excluded.status,location=excluded.location,district=excluded.district,province=excluded.province,start_date=excluded.start_date,end_date=excluded.end_date,donor_partner=excluded.donor_partner,featured=excluded.featured,published=excluded.published;

insert into public.projects (program_id,slug,title,category,summary,challenge,response,outcomes,status,location,district,province,start_date,end_date,donor_partner,featured,published)
values ((select id from public.programs where slug = 'research-surveys-community-mobilization' limit 1),'national-corruption-perception-survey-2023','National Corruption Perception Survey (NCPS) 2023','Research & Surveys','National Corruption Perception Survey field activity in Umerkot with Transparency International Pakistan.','','Sukaar supported implementation of the NCPS field activity in Umerkot.','{}'::text[],'completed','Umerkot, Sindh','Umerkot','Sindh','2023-10-08','2023-10-15','Transparency International Pakistan',false,true)
on conflict (slug) do update set program_id=excluded.program_id,title=excluded.title,category=excluded.category,summary=excluded.summary,challenge=excluded.challenge,response=excluded.response,outcomes=excluded.outcomes,status=excluded.status,location=excluded.location,district=excluded.district,province=excluded.province,start_date=excluded.start_date,end_date=excluded.end_date,donor_partner=excluded.donor_partner,featured=excluded.featured,published=excluded.published;

insert into public.projects (program_id,slug,title,category,summary,challenge,response,outcomes,status,location,district,province,start_date,end_date,donor_partner,featured,published)
values ((select id from public.programs where slug = 'youth-development' limit 1),'youth-engagement-transparent-inclusive-governance-2023','Youth Engagement, Leadership and Participation for Transparent and Inclusive Governance','Youth Development','A youth governance initiative in Umerkot focused on transparency, right to information, youth policy and inclusive governance.','','Sukaar conducted a capacity-building training workshop with Transparency International Pakistan at TINAHS Umerkot.',array['50 youth leaders and 10 stakeholders trained on the Sindh Transparency and Right to Information Act 2016, the Sindh Youth Policy 2018 and inclusive governance.']::text[],'completed','Umerkot, Sindh','Umerkot','Sindh','2023-05-15','2023-05-15','Transparency International Pakistan',false,true)
on conflict (slug) do update set program_id=excluded.program_id,title=excluded.title,category=excluded.category,summary=excluded.summary,challenge=excluded.challenge,response=excluded.response,outcomes=excluded.outcomes,status=excluded.status,location=excluded.location,district=excluded.district,province=excluded.province,start_date=excluded.start_date,end_date=excluded.end_date,donor_partner=excluded.donor_partner,featured=excluded.featured,published=excluded.published;

insert into public.projects (program_id,slug,title,category,summary,challenge,response,outcomes,status,location,district,province,start_date,end_date,donor_partner,featured,published)
values ((select id from public.programs where slug = 'youth-development' limit 1),'power-to-the-youth-2022-2024','Power to the Youth','Youth Development','A Norwegian Church Aid-supported initiative strengthening youth activism, inclusive governance and social accountability.','The project focused on strengthening youth participation and civil society engagement in improved and inclusive governance and social accountability.','Sukaar supported civil society engagement, youth activism, advocacy and outreach throughout the project period.',array['Civil society engagement on inclusive governance and social accountability supported.','Youth activism supported with young people engaged as agents of change.','Advocacy and outreach components supported during and beyond the project period.']::text[],'completed','Mirpurkhas, Sindh','Mirpurkhas','Sindh','2022-09-01','2024-12-31','Norwegian Church Aid',true,true)
on conflict (slug) do update set program_id=excluded.program_id,title=excluded.title,category=excluded.category,summary=excluded.summary,challenge=excluded.challenge,response=excluded.response,outcomes=excluded.outcomes,status=excluded.status,location=excluded.location,district=excluded.district,province=excluded.province,start_date=excluded.start_date,end_date=excluded.end_date,donor_partner=excluded.donor_partner,featured=excluded.featured,published=excluded.published;

insert into public.projects (program_id,slug,title,category,summary,challenge,response,outcomes,status,location,district,province,start_date,end_date,donor_partner,featured,published)
values (null,'social-marriage-ceremony-2022','Social Marriage Ceremony','Social Welfare','Arrangement and implementation of a social marriage ceremony in Karachi with Islamic Help Pakistan.','','Sukaar implemented the social marriage activity with Islamic Help Pakistan.',array['Collective marriages of 30 couples.']::text[],'completed','Karachi, Sindh','Karachi','Sindh','2022-09-01',null,'Islamic Help Pakistan',false,true)
on conflict (slug) do update set program_id=excluded.program_id,title=excluded.title,category=excluded.category,summary=excluded.summary,challenge=excluded.challenge,response=excluded.response,outcomes=excluded.outcomes,status=excluded.status,location=excluded.location,district=excluded.district,province=excluded.province,start_date=excluded.start_date,end_date=excluded.end_date,donor_partner=excluded.donor_partner,featured=excluded.featured,published=excluded.published;

insert into public.projects (program_id,slug,title,category,summary,challenge,response,outcomes,status,location,district,province,start_date,end_date,donor_partner,featured,published)
values ((select id from public.programs where slug = 'youth-development' limit 1),'youth-gender-capacity-building-2022','Capacity Building of Youth on Gender','Youth Development','Capacity building of youth on gender and youth empowerment in District Umerkot.','','Sukaar implemented the activity with Men-Engage Alliance Pakistan and National Secretariat-MRDO.','{}'::text[],'completed','Umerkot, Sindh','Umerkot','Sindh','2022-02-12','2022-02-12','Men-Engage Alliance Pakistan (MEAP) and National Secretariat-MRDO',false,true)
on conflict (slug) do update set program_id=excluded.program_id,title=excluded.title,category=excluded.category,summary=excluded.summary,challenge=excluded.challenge,response=excluded.response,outcomes=excluded.outcomes,status=excluded.status,location=excluded.location,district=excluded.district,province=excluded.province,start_date=excluded.start_date,end_date=excluded.end_date,donor_partner=excluded.donor_partner,featured=excluded.featured,published=excluded.published;

insert into public.projects (program_id,slug,title,category,summary,challenge,response,outcomes,status,location,district,province,start_date,end_date,donor_partner,featured,published)
values ((select id from public.programs where slug = 'education-child-development' limit 1),'corner-library-malir','Corner Library','Education & Child Development','A corner-library initiative in District Malir, Karachi, implemented with Alif Laila Book Bus Society.','','Sukaar established a library corner at Government Girls Lower Secondary School, village Soomar Kandani, Malir-Karachi.',array['Library corner established at Government Girls Lower Secondary School, village Soomar Kandani, Malir-Karachi.']::text[],'completed','Malir, Karachi, Sindh','Malir','Sindh',null,null,'Alif Laila Book Bus Society',false,true)
on conflict (slug) do update set program_id=excluded.program_id,title=excluded.title,category=excluded.category,summary=excluded.summary,challenge=excluded.challenge,response=excluded.response,outcomes=excluded.outcomes,status=excluded.status,location=excluded.location,district=excluded.district,province=excluded.province,start_date=excluded.start_date,end_date=excluded.end_date,donor_partner=excluded.donor_partner,featured=excluded.featured,published=excluded.published;

insert into public.projects (program_id,slug,title,category,summary,challenge,response,outcomes,status,location,district,province,start_date,end_date,donor_partner,featured,published)
values ((select id from public.programs where slug = 'women-gender-empowerment' limit 1),'explore-more-program-2021','Explore More Program 2021','Women & Gender Empowerment','A Girl Rising program in District Malir using creative and multimedia tools to address stereotypes, disparities and social norms affecting girls and young people.','The profile describes limited role models and restrictive expectations affecting many girls as the context for the program.','The program used activities, discussions and multimedia tools to help participants recognize possibilities, use their voices and contribute to positive change.','{}'::text[],'completed','Malir, Karachi, Sindh','Malir','Sindh','2021-11-25','2022-01-25','Girl Rising',false,true)
on conflict (slug) do update set program_id=excluded.program_id,title=excluded.title,category=excluded.category,summary=excluded.summary,challenge=excluded.challenge,response=excluded.response,outcomes=excluded.outcomes,status=excluded.status,location=excluded.location,district=excluded.district,province=excluded.province,start_date=excluded.start_date,end_date=excluded.end_date,donor_partner=excluded.donor_partner,featured=excluded.featured,published=excluded.published;

insert into public.projects (program_id,slug,title,category,summary,challenge,response,outcomes,status,location,district,province,start_date,end_date,donor_partner,featured,published)
values ((select id from public.programs where slug = 'research-surveys-community-mobilization' limit 1),'early-learning-partnership-phase-ii-2021','Early Learning Partnership Phase-II Survey 2021','Research & Surveys','Survey training and data collection services for the Early Learning Partnership Phase-II survey 2021.','','Sukaar supported survey training and data collection in Badin, Tando Allahyar and District Malir Karachi.','{}'::text[],'completed','Badin, Tando Allahyar and Malir Karachi, Sindh','Multiple districts','Sindh','2021-08-01',null,'Idara-e-Taleem-o-Aagahi (ITA)',false,true)
on conflict (slug) do update set program_id=excluded.program_id,title=excluded.title,category=excluded.category,summary=excluded.summary,challenge=excluded.challenge,response=excluded.response,outcomes=excluded.outcomes,status=excluded.status,location=excluded.location,district=excluded.district,province=excluded.province,start_date=excluded.start_date,end_date=excluded.end_date,donor_partner=excluded.donor_partner,featured=excluded.featured,published=excluded.published;

insert into public.projects (program_id,slug,title,category,summary,challenge,response,outcomes,status,location,district,province,start_date,end_date,donor_partner,featured,published)
values ((select id from public.programs where slug = 'research-surveys-community-mobilization' limit 1),'aser-pak-2021-rural-urban','Annual Status of Education Report (ASER-Pak) 2021 — Rural & Urban','Research & Surveys','Pre-survey training and data collection for ASER-Pakistan 2021 across urban and rural districts in Karachi and Sindh.','','The profile records work across Karachi Malir, Korangi, West, Central and East, and rural Badin, Mithi, Sujawal, Thatta, Tando Muhammad Khan and Umerkot.','{}'::text[],'completed','Multiple districts across Karachi and Sindh','Multiple districts','Sindh','2021-08-01',null,'Idara-e-Taleem-o-Aagahi (ITA)',false,true)
on conflict (slug) do update set program_id=excluded.program_id,title=excluded.title,category=excluded.category,summary=excluded.summary,challenge=excluded.challenge,response=excluded.response,outcomes=excluded.outcomes,status=excluded.status,location=excluded.location,district=excluded.district,province=excluded.province,start_date=excluded.start_date,end_date=excluded.end_date,donor_partner=excluded.donor_partner,featured=excluded.featured,published=excluded.published;

insert into public.projects (program_id,slug,title,category,summary,challenge,response,outcomes,status,location,district,province,start_date,end_date,donor_partner,featured,published)
values ((select id from public.programs where slug = 'research-surveys-community-mobilization' limit 1),'aser-pak-2021-katchi-abadi-survey','ASER-Pak 2021 Katchi Abadi Survey','Research & Surveys','Pre-survey training and data collection for the ASER-Pakistan 2021 Katchi Abadi survey.','','Sukaar supported the Katchi Abadi survey in Korangi, Malir and Karachi West.','{}'::text[],'completed','Korangi, Malir and Karachi West, Sindh','Karachi','Sindh','2021-05-22','2021-06-30','Idara-e-Taleem-o-Aagahi (ITA)',false,true)
on conflict (slug) do update set program_id=excluded.program_id,title=excluded.title,category=excluded.category,summary=excluded.summary,challenge=excluded.challenge,response=excluded.response,outcomes=excluded.outcomes,status=excluded.status,location=excluded.location,district=excluded.district,province=excluded.province,start_date=excluded.start_date,end_date=excluded.end_date,donor_partner=excluded.donor_partner,featured=excluded.featured,published=excluded.published;

insert into public.projects (program_id,slug,title,category,summary,challenge,response,outcomes,status,location,district,province,start_date,end_date,donor_partner,featured,published)
values ((select id from public.programs where slug = 'research-surveys-community-mobilization' limit 1),'aser-survey-2021','Annual Status of Education Report (ASER) Survey 2021','Research & Surveys','ASER survey work in 2021 recorded in the organization profile for Malir-Karachi.','','Sukaar provided pre-survey training and data collection support with Idara-e-Taleem-o-Aagahi.','{}'::text[],'completed','Malir, Karachi, Sindh','Malir','Sindh','2021-02-15',null,'Idara-e-Taleem-o-Aagahi (ITA)',false,true)
on conflict (slug) do update set program_id=excluded.program_id,title=excluded.title,category=excluded.category,summary=excluded.summary,challenge=excluded.challenge,response=excluded.response,outcomes=excluded.outcomes,status=excluded.status,location=excluded.location,district=excluded.district,province=excluded.province,start_date=excluded.start_date,end_date=excluded.end_date,donor_partner=excluded.donor_partner,featured=excluded.featured,published=excluded.published;

insert into public.projects (program_id,slug,title,category,summary,challenge,response,outcomes,status,location,district,province,start_date,end_date,donor_partner,featured,published)
values ((select id from public.programs where slug = 'health-nutrition' limit 1),'childhood-immunization-gender-equity-2021','Human Centric Community Engagement for Reducing Gender and Equity Gaps in Childhood Immunization','Health & Nutrition','A community engagement project focused on reducing gender and equity gaps in childhood immunization in UC Ittehad Town, Baldia Tehsil, Karachi.','The stated goal was to improve health protection for pregnant women and children aged 0–23 months with minimal gender or equity gaps.','The project supported social mobilization, community engagement and vaccination coverage for pregnant women and children aged 0–23 months.',array['Stakeholder support for social mobilization and community engagement to improve vaccination.','Vaccination coverage for pregnant women and children aged 0–23 months supported with attention to equity and gender gaps.']::text[],'archived','UC Ittehad Town, Baldia Tehsil, Karachi, Sindh','Karachi','Sindh','2021-01-01',null,'Civil Society Human & Institutional Development Programme (CHIP)',true,true)
on conflict (slug) do update set program_id=excluded.program_id,title=excluded.title,category=excluded.category,summary=excluded.summary,challenge=excluded.challenge,response=excluded.response,outcomes=excluded.outcomes,status=excluded.status,location=excluded.location,district=excluded.district,province=excluded.province,start_date=excluded.start_date,end_date=excluded.end_date,donor_partner=excluded.donor_partner,featured=excluded.featured,published=excluded.published;

insert into public.projects (program_id,slug,title,category,summary,challenge,response,outcomes,status,location,district,province,start_date,end_date,donor_partner,featured,published)
values ((select id from public.programs where slug = 'research-surveys-community-mobilization' limit 1),'tcf-schools-survey-2020','TCF Schools Survey','Research & Surveys','TCF Schools Survey activity in Karachi in 2020 with Idara-e-Taleem-o-Aagahi.','','Sukaar supported survey implementation in Karachi.','{}'::text[],'completed','Karachi, Sindh','Karachi','Sindh',null,null,'Idara-e-Taleem-o-Aagahi (ITA)',false,true)
on conflict (slug) do update set program_id=excluded.program_id,title=excluded.title,category=excluded.category,summary=excluded.summary,challenge=excluded.challenge,response=excluded.response,outcomes=excluded.outcomes,status=excluded.status,location=excluded.location,district=excluded.district,province=excluded.province,start_date=excluded.start_date,end_date=excluded.end_date,donor_partner=excluded.donor_partner,featured=excluded.featured,published=excluded.published;

insert into public.projects (program_id,slug,title,category,summary,challenge,response,outcomes,status,location,district,province,start_date,end_date,donor_partner,featured,published)
values ((select id from public.programs where slug = 'research-surveys-community-mobilization' limit 1),'aser-2019-survey','Annual Status of Education Report (ASER) 2019 Survey','Research & Surveys','Pre-survey training and data collection for ASER-Pakistan 2019 in East, South, Central and Korangi districts of Karachi.','','Sukaar supported urban ASER survey training and data collection with Idara-e-Taleem-o-Aagahi.','{}'::text[],'completed','Karachi East, South, Central and Korangi, Sindh','Karachi','Sindh',null,null,'Idara-e-Taleem-o-Aagahi (ITA)',false,true)
on conflict (slug) do update set program_id=excluded.program_id,title=excluded.title,category=excluded.category,summary=excluded.summary,challenge=excluded.challenge,response=excluded.response,outcomes=excluded.outcomes,status=excluded.status,location=excluded.location,district=excluded.district,province=excluded.province,start_date=excluded.start_date,end_date=excluded.end_date,donor_partner=excluded.donor_partner,featured=excluded.featured,published=excluded.published;

insert into public.projects (program_id,slug,title,category,summary,challenge,response,outcomes,status,location,district,province,start_date,end_date,donor_partner,featured,published)
values ((select id from public.programs where slug = 'health-nutrition' limit 1),'typhoid-tcv-social-mobilization-2019','Social Mobilization for Typhoid Conjugate Vaccine (TCV) Catch-up Campaign 2019','Health & Nutrition','Community mobilization and advocacy support for the TCV catch-up campaign in District Malir, Karachi.','','Activities included stakeholder advocacy, awareness sessions, engagement with religious leaders and community gatekeepers, area mapping, monitoring and coordination with vaccination teams.','{}'::text[],'completed','Malir, Karachi, Sindh','Malir','Sindh',null,null,'Precision Health Consultants (PHC) Global Pvt Ltd',false,true)
on conflict (slug) do update set program_id=excluded.program_id,title=excluded.title,category=excluded.category,summary=excluded.summary,challenge=excluded.challenge,response=excluded.response,outcomes=excluded.outcomes,status=excluded.status,location=excluded.location,district=excluded.district,province=excluded.province,start_date=excluded.start_date,end_date=excluded.end_date,donor_partner=excluded.donor_partner,featured=excluded.featured,published=excluded.published;

insert into public.projects (program_id,slug,title,category,summary,challenge,response,outcomes,status,location,district,province,start_date,end_date,donor_partner,featured,published)
values ((select id from public.programs where slug = 'human-rights-governance' limit 1),'research-advocacy-democratic-accountability-2018-2020','Research and Advocacy for Democratic Accountability','Human Rights & Governance','Research and advocacy work in Mirpurkhas focused on democratic accountability and transparent, citizen-friendly budgeting.','','The profile records work on budget transparency, district budget-making processes, budget monitoring, district consultations and advocacy.',array['Budget transparency promoted.','District-level budget-making process studied and monitored.','District-level budget consultation and advocacy initiatives carried out.']::text[],'completed','Mirpurkhas, Sindh','Mirpurkhas','Sindh',null,null,'Center for Peace and Development Initiatives (CPDI) Islamabad',false,true)
on conflict (slug) do update set program_id=excluded.program_id,title=excluded.title,category=excluded.category,summary=excluded.summary,challenge=excluded.challenge,response=excluded.response,outcomes=excluded.outcomes,status=excluded.status,location=excluded.location,district=excluded.district,province=excluded.province,start_date=excluded.start_date,end_date=excluded.end_date,donor_partner=excluded.donor_partner,featured=excluded.featured,published=excluded.published;

insert into public.projects (program_id,slug,title,category,summary,challenge,response,outcomes,status,location,district,province,start_date,end_date,donor_partner,featured,published)
values ((select id from public.programs where slug = 'health-nutrition' limit 1),'malaria-community-awareness-2017','Community Awareness Sessions on Malaria','Health & Nutrition','Community-level malaria awareness sessions under the GFATM Malaria Project New Funding Model.','','Sukaar conducted community awareness sessions on malaria with the National Rural Support Programme in Umerkot.','{}'::text[],'completed','Umerkot, Sindh','Umerkot','Sindh',null,null,'National Rural Support Programme (NRSP)',false,true)
on conflict (slug) do update set program_id=excluded.program_id,title=excluded.title,category=excluded.category,summary=excluded.summary,challenge=excluded.challenge,response=excluded.response,outcomes=excluded.outcomes,status=excluded.status,location=excluded.location,district=excluded.district,province=excluded.province,start_date=excluded.start_date,end_date=excluded.end_date,donor_partner=excluded.donor_partner,featured=excluded.featured,published=excluded.published;

insert into public.projects (program_id,slug,title,category,summary,challenge,response,outcomes,status,location,district,province,start_date,end_date,donor_partner,featured,published)
values ((select id from public.programs where slug = 'education-child-development' limit 1),'play-advancement-quality-education-2016','Play for the Advancement of Quality Education (PAQE)','Education & Child Development','A quality education project in District Umerkot promoting child-centered, gender-sensitive and play-based learning approaches.','','Sukaar and Right To Play collaborated on play-based learning, advocacy events, technical support, staff training and community mobilization.','{}'::text[],'completed','Umerkot, Sindh','Umerkot','Sindh',null,null,'Right To Play International',false,true)
on conflict (slug) do update set program_id=excluded.program_id,title=excluded.title,category=excluded.category,summary=excluded.summary,challenge=excluded.challenge,response=excluded.response,outcomes=excluded.outcomes,status=excluded.status,location=excluded.location,district=excluded.district,province=excluded.province,start_date=excluded.start_date,end_date=excluded.end_date,donor_partner=excluded.donor_partner,featured=excluded.featured,published=excluded.published;

insert into public.projects (program_id,slug,title,category,summary,challenge,response,outcomes,status,location,district,province,start_date,end_date,donor_partner,featured,published)
values ((select id from public.programs where slug = 'human-rights-governance' limit 1),'minority-rights-southern-sindh-2015','Promotion and Protection of Minority Rights in Southern Sindh (PPMRS)','Human Rights & Governance','A rights initiative in Umerkot focused on minority rights awareness, citizen engagement, access to justice, security services and interfaith harmony.','','The project combined youth training, community awareness, interfaith engagement, paralegal awareness and community mobilization.',array['100 youth trained on paralegal work, data collection, event management and community mobilization.','Community mobilization sessions conducted in 20 villages on minority rights, legal rights and gender equality.','Interfaith community committees trained for peace promotion and brotherhood.','Women’s leadership, equality and non-discrimination promoted.']::text[],'completed','Umerkot, Sindh','Umerkot','Sindh',null,null,'Sindh Rural Partners Organization (SRPO) / DAI-EDACE',true,true)
on conflict (slug) do update set program_id=excluded.program_id,title=excluded.title,category=excluded.category,summary=excluded.summary,challenge=excluded.challenge,response=excluded.response,outcomes=excluded.outcomes,status=excluded.status,location=excluded.location,district=excluded.district,province=excluded.province,start_date=excluded.start_date,end_date=excluded.end_date,donor_partner=excluded.donor_partner,featured=excluded.featured,published=excluded.published;

insert into public.projects (program_id,slug,title,category,summary,challenge,response,outcomes,status,location,district,province,start_date,end_date,donor_partner,featured,published)
values ((select id from public.programs where slug = 'women-gender-empowerment' limit 1),'child-marriage-interactive-theatre-sanghar','Awareness Raising and Interactive Theatre on the Sindh Child Marriage Restraint Act 2013','Women & Gender Empowerment','Awareness raising and interactive theatre in District Sanghar on the Sindh Child Marriage Restraint Act 2013.','The project focused on child marriage awareness, girls’ education and community sensitization.','Sukaar used seminars, interactive theatre, engagement with parents and religious scholars, media outreach and civil-society networking.',array['228 notable and community participants sensitized about the Child Marriage Restraint Act 2013.','288 petition signatures collected against child marriage and in support of education.','Youth involved in awareness-raising through theatre.']::text[],'completed','Sanghar, Sindh','Sanghar','Sindh',null,null,'ActionAid Pakistan',false,true)
on conflict (slug) do update set program_id=excluded.program_id,title=excluded.title,category=excluded.category,summary=excluded.summary,challenge=excluded.challenge,response=excluded.response,outcomes=excluded.outcomes,status=excluded.status,location=excluded.location,district=excluded.district,province=excluded.province,start_date=excluded.start_date,end_date=excluded.end_date,donor_partner=excluded.donor_partner,featured=excluded.featured,published=excluded.published;

insert into public.projects (program_id,slug,title,category,summary,challenge,response,outcomes,status,location,district,province,start_date,end_date,donor_partner,featured,published)
values ((select id from public.programs where slug = 'climate-disaster-response' limit 1),'flood-response-umerkot-2022','Flood Response Activities 2022','Climate & Disaster Response','Flood-response support for affected families and children in Umerkot, including temporary learning and food assistance.','Flood-affected families and children required learning continuity and humanitarian support.','Sukaar facilitated temporary learning centres at Tent City Shuhada Colony Umerkot and provided direct support to families and students.',array['2 temporary learning centres established.','158 students enrolled in temporary learning centres.','530 families provided cooked food in IDP camps.','170 pairs of shoes, chocolates and gifts distributed to students.']::text[],'completed','Umerkot, Sindh','Umerkot','Sindh',null,null,'Education and Literacy Department, Government of Sindh',true,true)
on conflict (slug) do update set program_id=excluded.program_id,title=excluded.title,category=excluded.category,summary=excluded.summary,challenge=excluded.challenge,response=excluded.response,outcomes=excluded.outcomes,status=excluded.status,location=excluded.location,district=excluded.district,province=excluded.province,start_date=excluded.start_date,end_date=excluded.end_date,donor_partner=excluded.donor_partner,featured=excluded.featured,published=excluded.published;

insert into public.projects (program_id,slug,title,category,summary,challenge,response,outcomes,status,location,district,province,start_date,end_date,donor_partner,featured,published)
values ((select id from public.programs where slug = 'education-child-development' limit 1),'dosti-one-room-school-initiative-2021','Dosti One Room School Initiative','Education & Child Development','A one-room school initiative recorded in the profile as Dosti.','','Sukaar distributed school kits in schools in District Malir, Karachi.',array['School kits distributed in 10 schools in District Malir Karachi in May 2021.']::text[],'completed','Malir, Karachi, Sindh','Malir','Sindh',null,null,'',false,true)
on conflict (slug) do update set program_id=excluded.program_id,title=excluded.title,category=excluded.category,summary=excluded.summary,challenge=excluded.challenge,response=excluded.response,outcomes=excluded.outcomes,status=excluded.status,location=excluded.location,district=excluded.district,province=excluded.province,start_date=excluded.start_date,end_date=excluded.end_date,donor_partner=excluded.donor_partner,featured=excluded.featured,published=excluded.published;

insert into public.projects (program_id,slug,title,category,summary,challenge,response,outcomes,status,location,district,province,start_date,end_date,donor_partner,featured,published)
values ((select id from public.programs where slug = 'women-gender-empowerment' limit 1),'every-voice-counts-2019','Every Voice Counts (EVC)','Women & Gender Empowerment','A capacity-development initiative for marginalized communities, especially women and girls, implemented with Community World Service Asia and the District Engagement Group.','','The intervention focused on strengthening women’s voice and creating an enabling environment for policy implementation, including video-screening events on the Sindh Child Marriage Restraint Act 2013.','{}'::text[],'completed','Umerkot, Sindh','Umerkot','Sindh',null,null,'Community World Service Asia',false,true)
on conflict (slug) do update set program_id=excluded.program_id,title=excluded.title,category=excluded.category,summary=excluded.summary,challenge=excluded.challenge,response=excluded.response,outcomes=excluded.outcomes,status=excluded.status,location=excluded.location,district=excluded.district,province=excluded.province,start_date=excluded.start_date,end_date=excluded.end_date,donor_partner=excluded.donor_partner,featured=excluded.featured,published=excluded.published;

insert into public.partners (name,slug,partner_type,description,website_url,display_order,featured,published)
values ('Transparency International Pakistan','transparency-international-pakistan','partner','Partner on transparency, anti-corruption, governance and survey activities.','',10,true,true)
on conflict (slug) do update set name=excluded.name,partner_type=excluded.partner_type,description=excluded.description,display_order=excluded.display_order,featured=excluded.featured,published=excluded.published;

insert into public.partners (name,slug,partner_type,description,website_url,display_order,featured,published)
values ('Indus Resource Centre (IRC)','indus-resource-centre-irc','partner','Partner on the Young Omang child marriage advocacy initiative.','',20,true,true)
on conflict (slug) do update set name=excluded.name,partner_type=excluded.partner_type,description=excluded.description,display_order=excluded.display_order,featured=excluded.featured,published=excluded.published;

insert into public.partners (name,slug,partner_type,description,website_url,display_order,featured,published)
values ('Chanan Development Association (CDA) Pakistan','chanan-development-association-cda-pakistan','partner','Partner on the Young Omang child marriage advocacy initiative.','',30,true,true)
on conflict (slug) do update set name=excluded.name,partner_type=excluded.partner_type,description=excluded.description,display_order=excluded.display_order,featured=excluded.featured,published=excluded.published;

insert into public.partners (name,slug,partner_type,description,website_url,display_order,featured,published)
values ('Norwegian Church Aid','norwegian-church-aid','partner','Partner on the Power to the Youth project.','',40,true,true)
on conflict (slug) do update set name=excluded.name,partner_type=excluded.partner_type,description=excluded.description,display_order=excluded.display_order,featured=excluded.featured,published=excluded.published;

insert into public.partners (name,slug,partner_type,description,website_url,display_order,featured,published)
values ('Islamic Help Pakistan','islamic-help-pakistan','partner','Partner on social marriage and humanitarian activities.','',50,true,true)
on conflict (slug) do update set name=excluded.name,partner_type=excluded.partner_type,description=excluded.description,display_order=excluded.display_order,featured=excluded.featured,published=excluded.published;

insert into public.partners (name,slug,partner_type,description,website_url,display_order,featured,published)
values ('Men-Engage Alliance Pakistan (MEAP)','men-engage-alliance-pakistan-meap','partner','Partner on youth gender capacity building.','',60,true,true)
on conflict (slug) do update set name=excluded.name,partner_type=excluded.partner_type,description=excluded.description,display_order=excluded.display_order,featured=excluded.featured,published=excluded.published;

insert into public.partners (name,slug,partner_type,description,website_url,display_order,featured,published)
values ('National Secretariat-MRDO','national-secretariat-mrdo','partner','Partner on youth gender capacity building.','',70,true,true)
on conflict (slug) do update set name=excluded.name,partner_type=excluded.partner_type,description=excluded.description,display_order=excluded.display_order,featured=excluded.featured,published=excluded.published;

insert into public.partners (name,slug,partner_type,description,website_url,display_order,featured,published)
values ('Alif Laila Book Bus Society','alif-laila-book-bus-society','partner','Partner on the Corner Library initiative.','',80,true,true)
on conflict (slug) do update set name=excluded.name,partner_type=excluded.partner_type,description=excluded.description,display_order=excluded.display_order,featured=excluded.featured,published=excluded.published;

insert into public.partners (name,slug,partner_type,description,website_url,display_order,featured,published)
values ('Girl Rising','girl-rising','partner','Partner on the Explore More Program 2021.','',90,false,true)
on conflict (slug) do update set name=excluded.name,partner_type=excluded.partner_type,description=excluded.description,display_order=excluded.display_order,featured=excluded.featured,published=excluded.published;

insert into public.partners (name,slug,partner_type,description,website_url,display_order,featured,published)
values ('Idara-e-Taleem-o-Aagahi (ITA)','idara-e-taleem-o-aagahi-ita','partner','Partner on education surveys, early learning and education campaigns.','',100,false,true)
on conflict (slug) do update set name=excluded.name,partner_type=excluded.partner_type,description=excluded.description,display_order=excluded.display_order,featured=excluded.featured,published=excluded.published;

insert into public.partners (name,slug,partner_type,description,website_url,display_order,featured,published)
values ('Civil Society Human & Institutional Development Programme (CHIP)','civil-society-human-and-institutional-development-programme-chip','partner','Partner on community engagement for childhood immunization.','',110,false,true)
on conflict (slug) do update set name=excluded.name,partner_type=excluded.partner_type,description=excluded.description,display_order=excluded.display_order,featured=excluded.featured,published=excluded.published;

insert into public.partners (name,slug,partner_type,description,website_url,display_order,featured,published)
values ('Community World Service Asia','community-world-service-asia','partner','Partner on the Every Voice Counts initiative and child-rights awareness activities.','',120,false,true)
on conflict (slug) do update set name=excluded.name,partner_type=excluded.partner_type,description=excluded.description,display_order=excluded.display_order,featured=excluded.featured,published=excluded.published;

insert into public.partners (name,slug,partner_type,description,website_url,display_order,featured,published)
values ('Precision Health Consultants (PHC) Global Pvt Ltd','precision-health-consultants-phc-global-pvt-ltd','partner','Partner on social mobilization for the TCV catch-up campaign.','',130,false,true)
on conflict (slug) do update set name=excluded.name,partner_type=excluded.partner_type,description=excluded.description,display_order=excluded.display_order,featured=excluded.featured,published=excluded.published;

insert into public.partners (name,slug,partner_type,description,website_url,display_order,featured,published)
values ('Center for Peace and Development Initiatives (CPDI)','center-for-peace-and-development-initiatives-cpdi','partner','Partner on research and advocacy for democratic accountability.','',140,false,true)
on conflict (slug) do update set name=excluded.name,partner_type=excluded.partner_type,description=excluded.description,display_order=excluded.display_order,featured=excluded.featured,published=excluded.published;

insert into public.partners (name,slug,partner_type,description,website_url,display_order,featured,published)
values ('National Rural Support Programme (NRSP)','national-rural-support-programme-nrsp','partner','Partner on community malaria awareness under the GFATM malaria project.','',150,false,true)
on conflict (slug) do update set name=excluded.name,partner_type=excluded.partner_type,description=excluded.description,display_order=excluded.display_order,featured=excluded.featured,published=excluded.published;

insert into public.partners (name,slug,partner_type,description,website_url,display_order,featured,published)
values ('Right To Play International','right-to-play-international','partner','Partner on play-based quality education in Umerkot.','',160,false,true)
on conflict (slug) do update set name=excluded.name,partner_type=excluded.partner_type,description=excluded.description,display_order=excluded.display_order,featured=excluded.featured,published=excluded.published;

insert into public.partners (name,slug,partner_type,description,website_url,display_order,featured,published)
values ('Sindh Rural Partners Organization (SRPO)','sindh-rural-partners-organization-srpo','partner','Partner on the promotion and protection of minority rights in Southern Sindh.','',170,false,true)
on conflict (slug) do update set name=excluded.name,partner_type=excluded.partner_type,description=excluded.description,display_order=excluded.display_order,featured=excluded.featured,published=excluded.published;

insert into public.partners (name,slug,partner_type,description,website_url,display_order,featured,published)
values ('DAI-EDACE','dai-edace','partner','Partner associated with the minority-rights project in Southern Sindh.','',180,false,true)
on conflict (slug) do update set name=excluded.name,partner_type=excluded.partner_type,description=excluded.description,display_order=excluded.display_order,featured=excluded.featured,published=excluded.published;

insert into public.partners (name,slug,partner_type,description,website_url,display_order,featured,published)
values ('ActionAid Pakistan','actionaid-pakistan','partner','Partner on child-marriage awareness and interactive theatre in Sanghar.','',190,false,true)
on conflict (slug) do update set name=excluded.name,partner_type=excluded.partner_type,description=excluded.description,display_order=excluded.display_order,featured=excluded.featured,published=excluded.published;

insert into public.partners (name,slug,partner_type,description,website_url,display_order,featured,published)
values ('Education and Literacy Department, Government of Sindh','education-and-literacy-department-government-of-sindh','government','Collaborator on temporary learning centres and education activities.','',200,false,true)
on conflict (slug) do update set name=excluded.name,partner_type=excluded.partner_type,description=excluded.description,display_order=excluded.display_order,featured=excluded.featured,published=excluded.published;

insert into public.partners (name,slug,partner_type,description,website_url,display_order,featured,published)
values ('Sindh Child Protection Authority / Social Welfare Department, Government of Sindh','sindh-child-protection-authority-social-welfare-department-government-of-sindh','government','Collaborator on child-protection awareness activities.','',210,false,true)
on conflict (slug) do update set name=excluded.name,partner_type=excluded.partner_type,description=excluded.description,display_order=excluded.display_order,featured=excluded.featured,published=excluded.published;

insert into public.partners (name,slug,partner_type,description,website_url,display_order,featured,published)
values ('United Nations Food & Agriculture Organization (FAO)','united-nations-food-and-agriculture-organization-fao','partner','Collaborator on health and food-related awareness activities recorded in the profile.','',220,false,true)
on conflict (slug) do update set name=excluded.name,partner_type=excluded.partner_type,description=excluded.description,display_order=excluded.display_order,featured=excluded.featured,published=excluded.published;

insert into public.partners (name,slug,partner_type,description,website_url,display_order,featured,published)
values ('UNFPA','unfpa','partner','Collaborator on 16 Days of Activism Against Gender Based Violence.','',230,false,true)
on conflict (slug) do update set name=excluded.name,partner_type=excluded.partner_type,description=excluded.description,display_order=excluded.display_order,featured=excluded.featured,published=excluded.published;

insert into public.partners (name,slug,partner_type,description,website_url,display_order,featured,published)
values ('Kachhi Community Development Association','kachhi-community-development-association','partner','Collaborator on an anti-corruption awareness campaign recorded in the profile.','',240,false,true)
on conflict (slug) do update set name=excluded.name,partner_type=excluded.partner_type,description=excluded.description,display_order=excluded.display_order,featured=excluded.featured,published=excluded.published;

insert into public.partners (name,slug,partner_type,description,website_url,display_order,featured,published)
values ('Scaling up Nutrition Civil Society Alliance-Pakistan (SUN-CSA-Pak)','scaling-up-nutrition-civil-society-alliance-pakistan-sun-csa-pak','network','Network or membership listed in the Sukaar Welfare Organization profile.','',250,false,true)
on conflict (slug) do update set name=excluded.name,partner_type=excluded.partner_type,description=excluded.description,display_order=excluded.display_order,featured=excluded.featured,published=excluded.published;

insert into public.partners (name,slug,partner_type,description,website_url,display_order,featured,published)
values ('SUN-CSA Working Group on Maternal and Child Health and Nutrition','sun-csa-working-group-on-maternal-and-child-health-and-nutrition','network','Network or membership listed in the Sukaar Welfare Organization profile.','',260,false,true)
on conflict (slug) do update set name=excluded.name,partner_type=excluded.partner_type,description=excluded.description,display_order=excluded.display_order,featured=excluded.featured,published=excluded.published;

insert into public.partners (name,slug,partner_type,description,website_url,display_order,featured,published)
values ('White Ribbon Alliance-Pakistan','white-ribbon-alliance-pakistan','network','Network or membership listed in the Sukaar Welfare Organization profile.','',270,false,true)
on conflict (slug) do update set name=excluded.name,partner_type=excluded.partner_type,description=excluded.description,display_order=excluded.display_order,featured=excluded.featured,published=excluded.published;

insert into public.partners (name,slug,partner_type,description,website_url,display_order,featured,published)
values ('International Women Peace Group (IWPG)','international-women-peace-group-iwpg','network','Network or membership listed in the Sukaar Welfare Organization profile.','',280,false,true)
on conflict (slug) do update set name=excluded.name,partner_type=excluded.partner_type,description=excluded.description,display_order=excluded.display_order,featured=excluded.featured,published=excluded.published;

insert into public.partners (name,slug,partner_type,description,website_url,display_order,featured,published)
values ('Peace & Collaborative Development Network (PCDN)','peace-and-collaborative-development-network-pcdn','network','Network or membership listed in the Sukaar Welfare Organization profile.','',290,false,true)
on conflict (slug) do update set name=excluded.name,partner_type=excluded.partner_type,description=excluded.description,display_order=excluded.display_order,featured=excluded.featured,published=excluded.published;

insert into public.partners (name,slug,partner_type,description,website_url,display_order,featured,published)
values ('Women Thrive Alliance','women-thrive-alliance','network','Network or membership listed in the Sukaar Welfare Organization profile.','',300,false,true)
on conflict (slug) do update set name=excluded.name,partner_type=excluded.partner_type,description=excluded.description,display_order=excluded.display_order,featured=excluded.featured,published=excluded.published;

insert into public.partners (name,slug,partner_type,description,website_url,display_order,featured,published)
values ('Universal Health Coalition (UHC)','universal-health-coalition-uhc','network','Network or membership listed in the Sukaar Welfare Organization profile.','',310,false,true)
on conflict (slug) do update set name=excluded.name,partner_type=excluded.partner_type,description=excluded.description,display_order=excluded.display_order,featured=excluded.featured,published=excluded.published;

insert into public.partners (name,slug,partner_type,description,website_url,display_order,featured,published)
values ('CIVICUS World Alliance','civicus-world-alliance','network','Network or membership listed in the Sukaar Welfare Organization profile.','',320,false,true)
on conflict (slug) do update set name=excluded.name,partner_type=excluded.partner_type,description=excluded.description,display_order=excluded.display_order,featured=excluded.featured,published=excluded.published;

insert into public.partners (name,slug,partner_type,description,website_url,display_order,featured,published)
values ('Global Network of Civil Society Organisations for Disaster Reduction (GNDR-South Asia)','global-network-of-civil-society-organisations-for-disaster-reduction-gndr-south-asia','network','Network or membership listed in the Sukaar Welfare Organization profile.','',330,false,true)
on conflict (slug) do update set name=excluded.name,partner_type=excluded.partner_type,description=excluded.description,display_order=excluded.display_order,featured=excluded.featured,published=excluded.published;

insert into public.partners (name,slug,partner_type,description,website_url,display_order,featured,published)
values ('Healthy Newborn Network (HNN)','healthy-newborn-network-hnn','network','Network or membership listed in the Sukaar Welfare Organization profile.','',340,false,true)
on conflict (slug) do update set name=excluded.name,partner_type=excluded.partner_type,description=excluded.description,display_order=excluded.display_order,featured=excluded.featured,published=excluded.published;

insert into public.partners (name,slug,partner_type,description,website_url,display_order,featured,published)
values ('Civil Society Engagement Mechanism (CSEM)','civil-society-engagement-mechanism-csem','network','Network or membership listed in the Sukaar Welfare Organization profile.','',350,false,true)
on conflict (slug) do update set name=excluded.name,partner_type=excluded.partner_type,description=excluded.description,display_order=excluded.display_order,featured=excluded.featured,published=excluded.published;

insert into public.partners (name,slug,partner_type,description,website_url,display_order,featured,published)
values ('Global Social Service Workforce Alliance','global-social-service-workforce-alliance','network','Network or membership listed in the Sukaar Welfare Organization profile.','',360,false,true)
on conflict (slug) do update set name=excluded.name,partner_type=excluded.partner_type,description=excluded.description,display_order=excluded.display_order,featured=excluded.featured,published=excluded.published;

insert into public.partners (name,slug,partner_type,description,website_url,display_order,featured,published)
values ('Corporate Accountability','corporate-accountability','network','Network or membership listed in the Sukaar Welfare Organization profile.','',370,false,true)
on conflict (slug) do update set name=excluded.name,partner_type=excluded.partner_type,description=excluded.description,display_order=excluded.display_order,featured=excluded.featured,published=excluded.published;

insert into public.partners (name,slug,partner_type,description,website_url,display_order,featured,published)
values ('Charter for Change Country Level Working Group (CLWG)','charter-for-change-country-level-working-group-clwg','network','Network or membership listed in the Sukaar Welfare Organization profile.','',380,false,true)
on conflict (slug) do update set name=excluded.name,partner_type=excluded.partner_type,description=excluded.description,display_order=excluded.display_order,featured=excluded.featured,published=excluded.published;

insert into public.partners (name,slug,partner_type,description,website_url,display_order,featured,published)
values ('Civil Society Network on Climate Governance (CSNCG)','civil-society-network-on-climate-governance-csncg','network','Network or membership listed in the Sukaar Welfare Organization profile.','',390,false,true)
on conflict (slug) do update set name=excluded.name,partner_type=excluded.partner_type,description=excluded.description,display_order=excluded.display_order,featured=excluded.featured,published=excluded.published;

insert into public.partners (name,slug,partner_type,description,website_url,display_order,featured,published)
values ('Sindh Climate Action Network (SCAN)','sindh-climate-action-network-scan','network','Network or membership listed in the Sukaar Welfare Organization profile.','',400,false,true)
on conflict (slug) do update set name=excluded.name,partner_type=excluded.partner_type,description=excluded.description,display_order=excluded.display_order,featured=excluded.featured,published=excluded.published;

insert into public.partners (name,slug,partner_type,description,website_url,display_order,featured,published)
values ('Disaster Risk Reduction Forum (DRR-Forum, Sindh)','disaster-risk-reduction-forum-drr-forum-sindh','network','Network or membership listed in the Sukaar Welfare Organization profile.','',410,false,true)
on conflict (slug) do update set name=excluded.name,partner_type=excluded.partner_type,description=excluded.description,display_order=excluded.display_order,featured=excluded.featured,published=excluded.published;

insert into public.partners (name,slug,partner_type,description,website_url,display_order,featured,published)
values ('FAO Alumni Associations Network (AAN-Pak)','fao-alumni-associations-network-aan-pak','network','Network or membership listed in the Sukaar Welfare Organization profile.','',420,false,true)
on conflict (slug) do update set name=excluded.name,partner_type=excluded.partner_type,description=excluded.description,display_order=excluded.display_order,featured=excluded.featured,published=excluded.published;

insert into public.partners (name,slug,partner_type,description,website_url,display_order,featured,published)
values ('Pakistan Alliance for Early Childhood (PAFEC)','pakistan-alliance-for-early-childhood-pafec','network','Network or membership listed in the Sukaar Welfare Organization profile.','',430,false,true)
on conflict (slug) do update set name=excluded.name,partner_type=excluded.partner_type,description=excluded.description,display_order=excluded.display_order,featured=excluded.featured,published=excluded.published;

insert into public.partners (name,slug,partner_type,description,website_url,display_order,featured,published)
values ('Peoples Network on Food and Agriculture (PNFA)','peoples-network-on-food-and-agriculture-pnfa','network','Network or membership listed in the Sukaar Welfare Organization profile.','',440,false,true)
on conflict (slug) do update set name=excluded.name,partner_type=excluded.partner_type,description=excluded.description,display_order=excluded.display_order,featured=excluded.featured,published=excluded.published;

insert into public.partners (name,slug,partner_type,description,website_url,display_order,featured,published)
values ('Society of Facilitators and Trainers (SOFT-Pak)','society-of-facilitators-and-trainers-soft-pak','network','Network or membership listed in the Sukaar Welfare Organization profile.','',450,false,true)
on conflict (slug) do update set name=excluded.name,partner_type=excluded.partner_type,description=excluded.description,display_order=excluded.display_order,featured=excluded.featured,published=excluded.published;

insert into public.partners (name,slug,partner_type,description,website_url,display_order,featured,published)
values ('National Peasants Coalition of Pakistan (NPCP)','national-peasants-coalition-of-pakistan-npcp','network','Network or membership listed in the Sukaar Welfare Organization profile.','',460,false,true)
on conflict (slug) do update set name=excluded.name,partner_type=excluded.partner_type,description=excluded.description,display_order=excluded.display_order,featured=excluded.featured,published=excluded.published;

insert into public.partners (name,slug,partner_type,description,website_url,display_order,featured,published)
values ('Research, Advocacy and Institutional Development Network','research-advocacy-and-institutional-development-network','network','Network or membership listed in the Sukaar Welfare Organization profile.','',470,false,true)
on conflict (slug) do update set name=excluded.name,partner_type=excluded.partner_type,description=excluded.description,display_order=excluded.display_order,featured=excluded.featured,published=excluded.published;

insert into public.partners (name,slug,partner_type,description,website_url,display_order,featured,published)
values ('Citizens Network for Budget Accountability (CNBA)','citizens-network-for-budget-accountability-cnba','network','Network or membership listed in the Sukaar Welfare Organization profile.','',480,false,true)
on conflict (slug) do update set name=excluded.name,partner_type=excluded.partner_type,description=excluded.description,display_order=excluded.display_order,featured=excluded.featured,published=excluded.published;

insert into public.partners (name,slug,partner_type,description,website_url,display_order,featured,published)
values ('District Engagement Group (DEG)','district-engagement-group-deg','network','Network or membership listed in the Sukaar Welfare Organization profile.','',490,false,true)
on conflict (slug) do update set name=excluded.name,partner_type=excluded.partner_type,description=excluded.description,display_order=excluded.display_order,featured=excluded.featured,published=excluded.published;

insert into public.partners (name,slug,partner_type,description,website_url,display_order,featured,published)
values ('District Advocacy Health Network','district-advocacy-health-network','network','Network or membership listed in the Sukaar Welfare Organization profile.','',500,false,true)
on conflict (slug) do update set name=excluded.name,partner_type=excluded.partner_type,description=excluded.description,display_order=excluded.display_order,featured=excluded.featured,published=excluded.published;

insert into public.partners (name,slug,partner_type,description,website_url,display_order,featured,published)
values ('Gender Forum','gender-forum','network','Network or membership listed in the Sukaar Welfare Organization profile.','',510,false,true)
on conflict (slug) do update set name=excluded.name,partner_type=excluded.partner_type,description=excluded.description,display_order=excluded.display_order,featured=excluded.featured,published=excluded.published;

insert into public.partners (name,slug,partner_type,description,website_url,display_order,featured,published)
values ('Free and Fair Election Network (FAFEN) — Regional Member','free-and-fair-election-network-fafen-regional-member','network','Network or membership listed in the Sukaar Welfare Organization profile.','',520,false,true)
on conflict (slug) do update set name=excluded.name,partner_type=excluded.partner_type,description=excluded.description,display_order=excluded.display_order,featured=excluded.featured,published=excluded.published;

insert into public.partners (name,slug,partner_type,description,website_url,display_order,featured,published)
values ('Inclusive Network for Electoral Education and Democracy (INEED)','inclusive-network-for-electoral-education-and-democracy-ineed','network','Network or membership listed in the Sukaar Welfare Organization profile.','',530,false,true)
on conflict (slug) do update set name=excluded.name,partner_type=excluded.partner_type,description=excluded.description,display_order=excluded.display_order,featured=excluded.featured,published=excluded.published;

insert into public.team_members (id,name,role_title,member_type,bio,email,linkedin_url,display_order,published)
values ('11111111-1111-4111-8111-111111111101'::uuid,'Ms. Shagufta Ahmed','President','board','Advocate, gender expert and trainer.','','',10,true)
on conflict (id) do update set name=excluded.name,role_title=excluded.role_title,member_type=excluded.member_type,bio=excluded.bio,email=excluded.email,linkedin_url=excluded.linkedin_url,display_order=excluded.display_order,published=excluded.published;

insert into public.team_members (id,name,role_title,member_type,bio,email,linkedin_url,display_order,published)
values ('11111111-1111-4111-8111-111111111102'::uuid,'Ms. Mahira','General Secretary','board','Social worker and youth activist.','','',20,true)
on conflict (id) do update set name=excluded.name,role_title=excluded.role_title,member_type=excluded.member_type,bio=excluded.bio,email=excluded.email,linkedin_url=excluded.linkedin_url,display_order=excluded.display_order,published=excluded.published;

insert into public.team_members (id,name,role_title,member_type,bio,email,linkedin_url,display_order,published)
values ('11111111-1111-4111-8111-111111111103'::uuid,'Abdul Razzak','Finance Secretary','board','Economist, consultant and trainer.','','',30,true)
on conflict (id) do update set name=excluded.name,role_title=excluded.role_title,member_type=excluded.member_type,bio=excluded.bio,email=excluded.email,linkedin_url=excluded.linkedin_url,display_order=excluded.display_order,published=excluded.published;

insert into public.team_members (id,name,role_title,member_type,bio,email,linkedin_url,display_order,published)
values ('11111111-1111-4111-8111-111111111104'::uuid,'Ayaz','Member','board','Agriculture expert.','','',40,true)
on conflict (id) do update set name=excluded.name,role_title=excluded.role_title,member_type=excluded.member_type,bio=excluded.bio,email=excluded.email,linkedin_url=excluded.linkedin_url,display_order=excluded.display_order,published=excluded.published;

insert into public.team_members (id,name,role_title,member_type,bio,email,linkedin_url,display_order,published)
values ('11111111-1111-4111-8111-111111111105'::uuid,'Ms. Aisha','Member','board','Doctor of Pharmacy and educationist.','','',50,true)
on conflict (id) do update set name=excluded.name,role_title=excluded.role_title,member_type=excluded.member_type,bio=excluded.bio,email=excluded.email,linkedin_url=excluded.linkedin_url,display_order=excluded.display_order,published=excluded.published;

insert into public.team_members (id,name,role_title,member_type,bio,email,linkedin_url,display_order,published)
values ('11111111-1111-4111-8111-111111111106'::uuid,'Munesh Kumar (PWD)','Member','board','Minority rights activist.','','',60,true)
on conflict (id) do update set name=excluded.name,role_title=excluded.role_title,member_type=excluded.member_type,bio=excluded.bio,email=excluded.email,linkedin_url=excluded.linkedin_url,display_order=excluded.display_order,published=excluded.published;

insert into public.team_members (id,name,role_title,member_type,bio,email,linkedin_url,display_order,published)
values ('11111111-1111-4111-8111-111111111107'::uuid,'Bheemraj','Member','board','Minority rights activist and educationist.','','',70,true)
on conflict (id) do update set name=excluded.name,role_title=excluded.role_title,member_type=excluded.member_type,bio=excluded.bio,email=excluded.email,linkedin_url=excluded.linkedin_url,display_order=excluded.display_order,published=excluded.published;

insert into public.team_members (id,name,role_title,member_type,bio,email,linkedin_url,display_order,published)
values ('11111111-1111-4111-8111-111111111108'::uuid,'Adv. Muhammad Bux Kumbhar','Executive Director','team','Executive Director responsible for day-to-day management, fundraising and stakeholder relationships, as described in the organization profile.','','',10,true)
on conflict (id) do update set name=excluded.name,role_title=excluded.role_title,member_type=excluded.member_type,bio=excluded.bio,email=excluded.email,linkedin_url=excluded.linkedin_url,display_order=excluded.display_order,published=excluded.published;

commit;
