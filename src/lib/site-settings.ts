import { createClient } from "@/lib/supabase/server";
import { isSupabaseConfigured } from "@/lib/supabase/env";

export type SiteContentSettings = {
  organization_name: string;
  short_name: string;
  tagline: string;
  address: string;
  city: string;
  province: string;
  country: string;
  phone: string;
  email: string;
  facebook_url: string;
  linkedin_url: string;
  donation_instructions: string;
  homepage_eyebrow: string;
  homepage_title: string;
  homepage_description: string;
  homepage_primary_label: string;
  homepage_primary_href: string;
  homepage_secondary_label: string;
  homepage_secondary_href: string;
  seo_title: string;
  seo_description: string;
};

export const defaultSiteSettings: SiteContentSettings = {
  organization_name: "Sukaar Welfare Organization",
  short_name: "Sukaar",
  tagline: "Hope for Change.",
  address: "Near Abdul Malik Kiryana Store, Govt. Boys College Road",
  city: "Umerkot",
  province: "Sindh",
  country: "Pakistan",
  phone: "+92 333 2978960",
  email: "sukaar.org.pk@gmail.com",
  facebook_url: "https://www.facebook.com/Sukaarwelfareorganization",
  linkedin_url: "",
  donation_instructions: "",
  homepage_eyebrow: "Community development across Sindh",
  homepage_title: "Empowering communities. Advancing rights. Creating opportunity.",
  homepage_description:
    "Sukaar Welfare Organization works with women, children, youth and underserved communities across education, health, livelihoods, human rights, resilience and community development.",
  homepage_primary_label: "Explore our work",
  homepage_primary_href: "/projects",
  homepage_secondary_label: "About Sukaar",
  homepage_secondary_href: "/about",
  seo_title: "Sukaar Welfare Organization | Sindh, Pakistan",
  seo_description:
    "Sukaar Welfare Organization is a Sindh-based non-profit working in education, health, livelihoods, human rights, youth and women empowerment, resilience and community development.",
};

export async function getSiteSettings(): Promise<SiteContentSettings> {
  if (!isSupabaseConfigured()) return defaultSiteSettings;

  try {
    const supabase = await createClient();
    const { data, error } = await supabase
      .from("site_content_settings")
      .select("*")
      .eq("id", 1)
      .maybeSingle();

    if (error || !data) return defaultSiteSettings;

    return {
      organization_name: data.organization_name,
      short_name: data.short_name,
      tagline: data.tagline,
      address: data.address,
      city: data.city,
      province: data.province,
      country: data.country,
      phone: data.phone,
      email: data.email,
      facebook_url: data.facebook_url,
      linkedin_url: data.linkedin_url,
      donation_instructions: data.donation_instructions,
      homepage_eyebrow: data.homepage_eyebrow,
      homepage_title: data.homepage_title,
      homepage_description: data.homepage_description,
      homepage_primary_label: data.homepage_primary_label,
      homepage_primary_href: data.homepage_primary_href,
      homepage_secondary_label: data.homepage_secondary_label,
      homepage_secondary_href: data.homepage_secondary_href,
      seo_title: data.seo_title,
      seo_description: data.seo_description,
    };
  } catch {
    return defaultSiteSettings;
  }
}
