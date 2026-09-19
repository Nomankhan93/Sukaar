import type { Metadata } from "next";
import Link from "next/link";
import { ArrowUpRight, Building2, ExternalLink, Network, ShieldCheck, Users } from "lucide-react";
import type { LucideIcon } from "lucide-react";
import { PageHero, SectionHeading } from "@/components/inner-page";
import { SiteFooter } from "@/components/site-footer";
import { SiteHeader } from "@/components/site-header";
import {
  sukaarAdvocacyCampaigns,
  sukaarBackground,
  sukaarBoardMembers,
  sukaarCoreValues,
  sukaarGovernanceNotes,
  sukaarNetworks,
  sukaarOrganizationFacts,
  sukaarPriorityAreas,
  sukaarProjectPortfolio,
  sukaarReferenceLinks,
  sukaarSpecificObjectives,
  sukaarStrategies,
  sukaarTargetParticipants,
} from "@/lib/sukaar-profile";

export const metadata: Metadata = {
  title: "Organization Profile",
  description: "Sukaar Welfare Organization profile: registration, governance, programs, networks, project experience and advocacy record.",
};

const factCards = [
  ["Registered under", sukaarOrganizationFacts.registeredUnder],
  ["Registration no.", sukaarOrganizationFacts.registrationNumber],
  ["Registration date", sukaarOrganizationFacts.registrationDate],
  ["NTN", sukaarOrganizationFacts.ntn],
];

export default function OrganizationProfilePage() {
  return (
    <>
      <SiteHeader />
      <main>
        <PageHero
          eyebrow="Organization profile"
          title="A decade of community development experience across Sindh."
          description="This page presents the institutional information, governance, networks, projects and campaigns documented in Sukaar Welfare Organization's supplied profile."
        />

        <section className="section-space bg-white">
          <div className="container-poem grid gap-12 lg:grid-cols-[.8fr_1.2fr]">
            <SectionHeading eyebrow="Institutional identity" title={sukaarOrganizationFacts.officialName} />
            <div>
              <div className="grid gap-4 sm:grid-cols-2">
                {factCards.map(([label, value]) => (
                  <article key={label} className="rounded-[24px] bg-poem-soft p-6">
                    <p className="text-[10px] font-extrabold uppercase tracking-[0.16em] text-poem-700">{label}</p>
                    <p className="mt-3 text-sm font-bold leading-7 text-poem-950">{value}</p>
                  </article>
                ))}
              </div>
              <div className="mt-5 rounded-[24px] border border-black/[0.07] p-6 text-sm leading-7 text-poem-muted">
                <p><strong className="text-poem-950">Address:</strong> {sukaarOrganizationFacts.address}</p>
                <p><strong className="text-poem-950">Email:</strong> {sukaarOrganizationFacts.email}</p>
                <p><strong className="text-poem-950">Phone:</strong> {sukaarOrganizationFacts.phone}</p>
                <p><strong className="text-poem-950">Executive Director:</strong> {sukaarOrganizationFacts.executiveDirector}</p>
              </div>
            </div>
          </div>
        </section>

        <section className="section-space bg-poem-cream">
          <div className="container-poem grid gap-12 lg:grid-cols-[.75fr_1.25fr]">
            <SectionHeading eyebrow="Background" title="Community development rooted in Sindh." />
            <div className="space-y-5">
              {sukaarBackground.map((paragraph) => (
                <p key={paragraph} className="text-base leading-8 text-poem-muted">{paragraph}</p>
              ))}
              <div className="flex flex-wrap gap-2 pt-2">
                {sukaarCoreValues.map((value) => (
                  <span key={value} className="rounded-full bg-white px-4 py-2 text-xs font-extrabold text-poem-900">{value}</span>
                ))}
              </div>
            </div>
          </div>
        </section>

        <section className="section-space bg-poem-soft">
          <div className="container-poem grid gap-5 lg:grid-cols-3">
            {[
              ["Mission", sukaarOrganizationFacts.mission],
              ["Vision", sukaarOrganizationFacts.vision],
              ["Overall goal", sukaarOrganizationFacts.goal],
            ].map(([label, text], index) => (
              <article key={label} className={index === 0 ? "rounded-[30px] bg-poem-950 p-8 text-white" : "rounded-[30px] bg-white p-8"}>
                <p className={index === 0 ? "text-xs font-extrabold uppercase tracking-[0.18em] text-poem-lime" : "text-xs font-extrabold uppercase tracking-[0.18em] text-poem-700"}>{label}</p>
                <p className={index === 0 ? "mt-5 text-xl font-bold leading-8" : "mt-5 text-xl font-bold leading-8 text-poem-950"}>{text}</p>
              </article>
            ))}
          </div>
        </section>

        <section className="section-space bg-white">
          <div className="container-poem">
            <SectionHeading eyebrow="Approach" title="Strategies, participants and priority areas." />
            <div className="mt-12 grid gap-5 lg:grid-cols-3">
              <ProfileList title="Strategies adopted" icon={ShieldCheck} items={sukaarStrategies} />
              <ProfileList title="Target participants" icon={Users} items={sukaarTargetParticipants} />
              <ProfileList title="Priority program areas" icon={Building2} items={sukaarPriorityAreas} />
            </div>
          </div>
        </section>

        <section className="section-space bg-poem-cream">
          <div className="container-poem">
            <SectionHeading eyebrow="Objectives" title="Specific objectives recorded in the organization profile." />
            <div className="mt-10 grid gap-4 md:grid-cols-2">
              {sukaarSpecificObjectives.map((item, index) => (
                <article key={item} className="rounded-[24px] bg-white p-6">
                  <p className="text-xs font-extrabold text-poem-700">{String(index + 1).padStart(2, "0")}</p>
                  <p className="mt-3 text-sm leading-7 text-poem-muted">{item}</p>
                </article>
              ))}
            </div>
          </div>
        </section>

        <section className="section-space bg-white">
          <div className="container-poem">
            <SectionHeading eyebrow="Governance" title="Board and management structure." description="The profile describes a seven-member gender-balanced Board of Directors and an Executive Director responsible for day-to-day management." />
            <div className="mt-10 flex flex-wrap gap-3">
              {["General Body", "Board of Directors", "Executive Director", "Program", "Finance & Admin", "Other Staff"].map((item) => (
                <span key={item} className="rounded-full bg-poem-soft px-5 py-3 text-sm font-extrabold text-poem-900">{item}</span>
              ))}
            </div>
            <div className="mt-8 grid gap-3 md:grid-cols-2">
              {sukaarGovernanceNotes.map((note) => (
                <p key={note} className="rounded-[20px] bg-poem-soft p-5 text-sm leading-7 text-poem-muted">{note}</p>
              ))}
            </div>
            <div className="mt-10 grid gap-4 md:grid-cols-2 xl:grid-cols-4">
              {sukaarBoardMembers.filter((member) => member.memberType === "board").map((member) => (
                <article key={member.id} className="rounded-[24px] border border-black/[0.07] p-6">
                  <h3 className="text-lg font-extrabold text-poem-950">{member.name}</h3>
                  <p className="mt-1 text-xs font-extrabold uppercase tracking-[0.12em] text-poem-700">{member.roleTitle}</p>
                  <p className="mt-4 text-sm leading-7 text-poem-muted">{member.bio}</p>
                </article>
              ))}
            </div>
            <Link href="/about/team" className="mt-8 inline-flex items-center gap-2 text-sm font-extrabold text-poem-800">View team & board <ArrowUpRight size={15} /></Link>
          </div>
        </section>

        <section className="section-space bg-poem-soft">
          <div className="container-poem">
            <SectionHeading eyebrow="Networks & memberships" title="Local, national and international networks listed in the profile." />
            <div className="mt-10 grid gap-3 md:grid-cols-2 xl:grid-cols-3">
              {sukaarNetworks.map((network) => (
                <div key={network} className="flex gap-3 rounded-[20px] bg-white p-5 text-sm font-bold leading-6 text-poem-900">
                  <Network size={18} className="mt-0.5 shrink-0 text-poem-700" />
                  {network}
                </div>
              ))}
            </div>
          </div>
        </section>

        <section className="section-space bg-white">
          <div className="container-poem">
            <SectionHeading eyebrow="Project experience" title="Projects and activities recorded in the organization profile." description="The portfolio below keeps the donor, geography and duration wording from the supplied profile. Where the source is internally inconsistent, the inconsistency is shown rather than silently reconciled." />
            <div className="mt-10 overflow-x-auto rounded-[26px] border border-black/[0.07]">
              <table className="min-w-[980px] w-full border-collapse text-left text-sm">
                <thead className="bg-poem-soft text-poem-950"><tr><th className="p-4">#</th><th className="p-4">Project / activity</th><th className="p-4">Sponsor / partner</th><th className="p-4">Geography</th><th className="p-4">Duration</th></tr></thead>
                <tbody>
                  {sukaarProjectPortfolio.map((project, index) => (
                    <tr key={project.slug} className="border-t border-black/[0.06] align-top">
                      <td className="p-4 font-extrabold text-poem-700">{index + 1}</td>
                      <td className="p-4"><Link href={`/projects/${project.slug}`} className="font-extrabold text-poem-950 hover:text-poem-700">{project.title}</Link><p className="mt-2 max-w-xl leading-6 text-poem-muted">{project.summary}</p></td>
                      <td className="p-4 text-poem-muted">{project.partner || "—"}</td>
                      <td className="p-4 text-poem-muted">{project.location}</td>
                      <td className="p-4 text-poem-muted">{project.duration}</td>
                    </tr>
                  ))}
                </tbody>
              </table>
            </div>
          </div>
        </section>

        <section className="section-space bg-poem-cream">
          <div className="container-poem">
            <SectionHeading eyebrow="Advocacy & awareness" title="Additional campaigns and documented activities." />
            <div className="mt-10 grid gap-5 lg:grid-cols-2">
              {sukaarAdvocacyCampaigns.map((campaign) => (
                <article key={campaign.title} className="rounded-[24px] bg-white p-6">
                  <h3 className="text-lg font-extrabold text-poem-950">{campaign.title}</h3>
                  <p className="mt-3 text-sm leading-7 text-poem-muted">{campaign.description}</p>
                </article>
              ))}
            </div>
          </div>
        </section>

        <section className="section-space bg-white">
          <div className="container-poem">
            <SectionHeading eyebrow="Reference links" title="News, photo gallery and policy links supplied in the profile." description="These links point to the original Google documents referenced by the organization profile." />
            <div className="mt-10 grid gap-4 md:grid-cols-2">
              {sukaarReferenceLinks.map((item) => (
                <a key={item.href} href={item.href} target="_blank" rel="noreferrer" className="flex items-center justify-between gap-4 rounded-[22px] border border-black/[0.07] p-5 font-extrabold text-poem-950 transition hover:bg-poem-soft">
                  {item.label}<ExternalLink size={16} />
                </a>
              ))}
            </div>
          </div>
        </section>
      </main>
      <SiteFooter />
    </>
  );
}

function ProfileList({ title, icon: Icon, items }: { title: string; icon: LucideIcon; items: readonly string[] }) {
  return (
    <article className="rounded-[28px] border border-black/[0.07] p-7">
      <div className="grid size-11 place-items-center rounded-2xl bg-poem-soft text-poem-900"><Icon size={20} /></div>
      <h2 className="mt-6 text-xl font-extrabold text-poem-950">{title}</h2>
      <ul className="mt-5 space-y-3 text-sm leading-6 text-poem-muted">{items.map((item) => <li key={item}>• {item}</li>)}</ul>
    </article>
  );
}
