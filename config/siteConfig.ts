export const DOMAIN_URL = "https://www.nasirchy.com";

export const SITE_CONFIG = {
  title: "Md Nasirul Islam Chowdhury",
  description:
    "Portfolio of Md Nasirul Islam Chowdhury, Seattle-based full-stack engineer. Specializing in Next.js, React, TypeScript, and Tailwind CSS.",
  url:
    DOMAIN_URL ?? process.env.NEXT_PUBLIC_VERCEL_URL ?? "http://localhost:3000",
  siteName: "Md Nasirul Islam Chowdhury",
  keywords: [
    "Md Nasirul Islam Chowdhury",
    "React Zero-UI",
    "Next.js",
    "React",
    "TypeScript",
    "Full-Stack Engineer",
  ],
  ogImage: "/profile.png",
  logo: "/logo.png",
} as const;

export const SITE_NAP = {
  name: "Md Nasirul Islam Chowdhury",
  googleBusinessType: "LocalBusiness" as const,
  contact: "Md Nasirul Islam Chowdhury",
  contactTitle: "CEO",
  email: "nasirchy252@gmail.com",
  phone: "+8801644113296",
  formattedPhone: "+880 01644113296",
  addressLink:
    "https://www.google.com/maps/search/?api=1&query=Md+Nasirul+Islam+Chowdhury",
  street: "12601 NE 124th ST",
  city: "Sylhet",
  state: "Sylhet",
  zipCode: "3103",
  openingHours: [{ days: "Mon - Sat", hours: "8am - 6pm" }] as const,
  // googleReviewLink: "https://g.page/r/CXHVs1ony_76EAI/review",
  profiles: {
    facebook: "https://www.facebook.com/nasir.web.dev",
    linkedIn: "https://www.linkedin.com/in/nasir252/",
    github: "https://github.com/Nasirul-Islam-Chowdhury",
    x: "https://x.com/Nasir143",
  } as const,
  logo: "/logo.png",
  favicon: "/favicon.ico",
} as const;

export const SITE_SLUGS = {
  home: "/",
  projects: "/projects",
  contact: "/#contact",
  about: "/#about-nasir",
  projectLinks: {
    iao: "/projects/iron-and-oak",
    travelAi: "/projects/travelAi",
    shineMen: "/projects/shineMen",
  },
} as const;

export const externalLinks = {
  shineMen: "https://men-s-skin-care.web.app",
  saasUi: "https://koworker-landing.vercel.app/",
  travelAI: "https://ziarah.ai",
  phoneSwapZone: "https://phoneswapzone.web.app",
} as const;

const flattenSlugs = (
  obj: Record<string, string | Record<string, string>>
): string[] => {
  return Object.values(obj).flatMap((value) =>
    typeof value === "string" ? [value] : flattenSlugs(value)
  );
};

export const ALL_PAGES: string[] = Object.values(SITE_SLUGS).flatMap((value) =>
  typeof value === "string" ? [value] : flattenSlugs(value)
);
