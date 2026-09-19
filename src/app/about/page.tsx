import type { Metadata } from "next";
import { Check, Flag, Target } from "lucide-react";
import { PageCta, PageHero, SectionHeading } from "@/components/inner-page";
import { SiteFooter } from "@/components/site-footer";
import { SiteHeader } from "@/components/site-header";
import { principles } from "@/lib/site-data";

export const metadata: Metadata = {
  title: "About",
  description:
    "Learn about Sukaar Welfare Organization, its mission, vision, values, governance and community development work across Sindh.",
};

export default function AboutPage() {
  return (
    <>
      <SiteHeader />
      <main>
        <PageHero
          eyebrow="About Sukaar"
          title="Local experience. Community trust. Lasting change."
          description="Sukaar Welfare Organization is a Sindh-based non-profit community development organization established by development professionals, human rights activists, researchers and concerned citizens."
        />

        <section className="section-space bg-white">
          <div className="container-poem grid gap-12 lg:grid-cols-[.75fr_1.25fr]">
            <SectionHeading
              eyebrow="Who we are"
              title="Working with communities since 2014."
            />

            <div className="space-y-7 text-lg leading-9 text-poem-muted">
              <p>
                Sukaar works to reduce poverty and strengthen a more secure,
                equitable and prosperous society through community development,
                rights awareness, practical services and local participation.
              </p>
              <p>
                Our work has included education, health and nutrition, youth and
                women empowerment, human rights, governance, agriculture and
                livelihoods, environmental conservation, disaster response,
                research, surveys and community mobilization.
              </p>

              <div className="grid gap-4 pt-3 sm:grid-cols-2">
                {[
                  "Community-centered",
                  "Rights-based",
                  "Transparent",
                  "Inclusive",
                ].map((item) => (
                  <div
                    key={item}
                    className="flex items-center gap-3 rounded-2xl bg-poem-soft p-4 text-sm font-extrabold text-poem-900"
                  >
                    <span className="grid size-7 place-items-center rounded-full bg-poem-lime">
                      <Check size={14} strokeWidth={3} />
                    </span>
                    {item}
                  </div>
                ))}
              </div>
            </div>
          </div>
        </section>

        <section className="section-space bg-poem-soft">
          <div className="container-poem grid gap-5 lg:grid-cols-2">
            <article className="rounded-[32px] bg-poem-950 p-8 text-white md:p-10">
              <div className="grid size-13 place-items-center rounded-2xl bg-poem-lime text-poem-950">
                <Target size={22} />
              </div>
              <p className="mt-10 text-xs font-extrabold uppercase tracking-[0.18em] text-poem-lime">
                Our mission
              </p>
              <h2 className="mt-4 text-3xl font-extrabold leading-tight tracking-[-0.04em] md:text-4xl">
                To empower deprived sections of society by strengthening their
                skills and knowledge in education, health, agriculture and
                socio-economic solutions.
              </h2>
            </article>

            <article className="rounded-[32px] bg-white p-8 md:p-10">
              <div className="grid size-13 place-items-center rounded-2xl bg-poem-soft text-poem-900">
                <Flag size={22} />
              </div>
              <p className="mt-10 text-xs font-extrabold uppercase tracking-[0.18em] text-poem-700">
                Our vision
              </p>
              <h2 className="mt-4 text-3xl font-extrabold leading-tight tracking-[-0.04em] text-poem-950 md:text-4xl">
                A dynamic, self-reliant and self-aware society where
                underprivileged communities can work independently and
                collectively for shared prosperity.
              </h2>
            </article>
          </div>
        </section>

        <section className="section-space bg-white">
          <div className="container-poem">
            <SectionHeading
              eyebrow="Our values"
              title="How we work matters."
              description="Sukaar's guiding values are equality, partnership, transparency, respect and inclusion."
            />

            <div className="mt-12 grid gap-4 md:grid-cols-2 xl:grid-cols-4">
              {principles.map(({ icon: Icon, title, text }) => (
                <article
                  key={title}
                  className="min-h-72 rounded-[28px] border border-black/[0.06] p-7"
                >
                  <div className="grid size-12 place-items-center rounded-2xl bg-poem-soft text-poem-900">
                    <Icon size={22} />
                  </div>
                  <h3 className="mt-9 text-2xl font-extrabold tracking-[-0.035em] text-poem-950">
                    {title}
                  </h3>
                  <p className="mt-4 text-sm leading-7 text-poem-muted">{text}</p>
                </article>
              ))}
            </div>
          </div>
        </section>

        <section className="section-space bg-poem-cream">
          <div className="container-poem grid gap-10 lg:grid-cols-2">
            <SectionHeading
              eyebrow="How we work"
              title="Mobilization, advocacy, skills and service delivery."
              description="Sukaar combines community engagement with practical implementation and institutional partnerships."
            />

            <div className="grid gap-4 sm:grid-cols-2">
              {[
                ["Social mobilization", "Organizing communities around local priorities and collective action."],
                ["Advocacy & awareness", "Building rights awareness and engaging decision-makers and stakeholders."],
                ["Skills enhancement", "Strengthening practical, leadership and livelihood capabilities."],
                ["Service provision", "Delivering education, health, humanitarian and community support activities."],
              ].map(([title, text]) => (
                <article key={title} className="rounded-[24px] bg-white p-6">
                  <h3 className="text-lg font-extrabold text-poem-950">{title}</h3>
                  <p className="mt-3 text-sm leading-7 text-poem-muted">{text}</p>
                </article>
              ))}
            </div>
          </div>
        </section>

        <section className="section-space bg-white">
          <div className="container-poem rounded-[32px] border border-black/[0.07] p-8 md:p-10">
            <p className="text-xs font-extrabold uppercase tracking-[0.18em] text-poem-700">Institutional profile</p>
            <div className="mt-4 flex flex-col gap-6 lg:flex-row lg:items-end lg:justify-between">
              <div>
                <h2 className="max-w-3xl text-3xl font-extrabold tracking-[-0.04em] text-poem-950 md:text-4xl">Explore Sukaar’s registration, governance, networks and full project experience.</h2>
                <p className="mt-4 max-w-2xl text-sm leading-7 text-poem-muted">The detailed profile preserves the information supplied in Sukaar’s organization profile while excluding personal CNIC numbers and private banking details from public pages.</p>
              </div>
              <a href="/about/profile" className="inline-flex shrink-0 items-center justify-center rounded-full bg-poem-950 px-6 py-3 text-sm font-extrabold text-white">View full organization profile</a>
            </div>
          </div>
        </section>

        <PageCta
          title="Partner with Sukaar for community-led development."
          description="We welcome collaboration with communities, development partners, public institutions, civil society networks and supporters working for inclusive and sustainable development."
        />
      </main>
      <SiteFooter />
    </>
  );
}
