import { sukaarPublicProjects } from "@/lib/sukaar-profile";
import {
  BookOpen,
  BriefcaseBusiness,
  HeartHandshake,
  ShieldCheck,
  Sprout,
  Users,
} from "lucide-react";

export const programs = [
  {
    slug: "education-child-development",
    title: "Education & Child Development",
    shortTitle: "Education",
    icon: BookOpen,
    summary:
      "Promoting basic education, girls' education, literacy, early learning and community-based learning opportunities.",
    description:
      "Sukaar supports education and child development through literacy promotion, school and community learning initiatives, temporary learning centres, surveys and advocacy for inclusive access to education.",
    focus: [
      "Basic education and literacy",
      "Girls' education",
      "Early learning and school support",
      "Child rights and protection awareness",
    ],
  },
  {
    slug: "health-nutrition",
    title: "Health & Nutrition",
    shortTitle: "Health",
    icon: HeartHandshake,
    summary:
      "Supporting maternal and child health, nutrition, immunization and community health awareness.",
    description:
      "Sukaar's health work includes maternal and child health, nutrition and food security, childhood immunization, malaria and typhoid awareness, and community mobilization for better health outcomes.",
    focus: [
      "Maternal and child health",
      "Nutrition and food security",
      "Immunization and disease prevention",
      "Community health awareness",
    ],
  },
  {
    slug: "women-gender-empowerment",
    title: "Women & Gender Empowerment",
    shortTitle: "Women & Gender",
    icon: Users,
    summary:
      "Advancing women's participation, leadership, rights and protection from discrimination and harmful practices.",
    description:
      "Sukaar works with women, girls and communities to strengthen leadership, participation, gender equality, awareness of rights and prevention of harmful practices including child marriage and gender-based violence.",
    focus: [
      "Women's leadership and participation",
      "Gender equality",
      "Child marriage prevention",
      "Gender-based violence awareness",
    ],
  },
  {
    slug: "youth-development",
    title: "Youth Development",
    shortTitle: "Youth",
    icon: Users,
    summary:
      "Building youth leadership, civic participation, practical skills and pathways to opportunity.",
    description:
      "Sukaar engages young people through leadership development, civic participation, skills enhancement, career support and advocacy so youth can contribute as active agents of change.",
    focus: [
      "Youth leadership",
      "Civic participation",
      "Skills enhancement",
      "Career and livelihood pathways",
    ],
  },
  {
    slug: "human-rights-governance",
    title: "Human Rights & Governance",
    shortTitle: "Rights & Governance",
    icon: ShieldCheck,
    summary:
      "Promoting rights awareness, transparency, social accountability, minority rights and inclusive governance.",
    description:
      "Sukaar combines community awareness, advocacy, social accountability and civic engagement to promote human rights, minority rights, transparency, access to information and inclusive governance.",
    focus: [
      "Human and minority rights",
      "Transparency and accountability",
      "Right to information",
      "Inclusive governance and civic engagement",
    ],
  },
  {
    slug: "livelihoods-agriculture",
    title: "Livelihoods & Agriculture",
    shortTitle: "Livelihoods",
    icon: BriefcaseBusiness,
    summary:
      "Supporting rural livelihoods, skills, agriculture and income-generating opportunities for underserved communities.",
    description:
      "Sukaar supports small farmers, women and youth through agriculture-related advocacy, vocational skills, income-generating opportunities and initiatives that strengthen sustainable livelihoods.",
    focus: [
      "Rural poverty reduction",
      "Agriculture and farmer rights",
      "Vocational skills",
      "Income-generating opportunities",
    ],
  },
  {
    slug: "climate-disaster-response",
    title: "Climate, Environment & Disaster Response",
    shortTitle: "Resilience",
    icon: Sprout,
    summary:
      "Strengthening preparedness, environmental stewardship and humanitarian response for vulnerable communities.",
    description:
      "Sukaar works on disaster risk reduction, emergency response, environmental conservation and community resilience, including support to families and temporary learning during crises.",
    focus: [
      "Disaster risk reduction",
      "Emergency and flood response",
      "Environmental conservation",
      "Community resilience",
    ],
  },
  {
    slug: "research-surveys-community-mobilization",
    title: "Research, Surveys & Community Mobilization",
    shortTitle: "Research & Surveys",
    icon: ShieldCheck,
    summary:
      "Delivering field research, survey implementation, data collection, social mobilization and community outreach.",
    description:
      "Sukaar has implemented education, health and governance-related surveys and field assignments across multiple districts of Sindh, supported by community mobilization and local stakeholder engagement.",
    focus: [
      "Field surveys and data collection",
      "Community mobilization",
      "Research support",
      "Stakeholder outreach",
    ],
  },
];

export const projects = sukaarPublicProjects;


export const principles = [
  {
    icon: Users,
    title: "Equality",
    text: "We work to expand fair access to rights, services, participation and opportunity.",
  },
  {
    icon: HeartHandshake,
    title: "Partnership",
    text: "We collaborate with communities, public institutions, civil society networks and development partners.",
  },
  {
    icon: ShieldCheck,
    title: "Transparency",
    text: "Responsible stewardship, open communication and accountability are central to institutional trust.",
  },
  {
    icon: Sprout,
    title: "Respect & Inclusion",
    text: "We engage communities with dignity and work across social, cultural and economic differences.",
  },
];

export const resources = [
  {
    type: "Organization Profile",
    title: "Sukaar Welfare Organization Profile",
    year: "2024",
    description:
      "Institutional background, governance, program priorities, partnerships and project experience.",
  },
  {
    type: "Governance",
    title: "Governance & Management Structure",
    year: "2024",
    description:
      "Board, executive management and organizational oversight structure.",
  },
  {
    type: "Portfolio",
    title: "Projects & Activities Portfolio",
    year: "2014–2024",
    description:
      "Selected projects and assignments implemented with development partners across Sindh.",
  },
  {
    type: "Advocacy",
    title: "Advocacy & Awareness Campaigns",
    year: "2014–2024",
    description:
      "Selected public awareness, rights, health, education and community mobilization initiatives.",
  },
];
