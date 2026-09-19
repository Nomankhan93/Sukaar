import type { Metadata } from "next";
import { Manrope } from "next/font/google";
import "./globals.css";

const manrope = Manrope({
  subsets: ["latin"],
  variable: "--font-manrope",
});

export const metadata: Metadata = {
  title: {
    default: "Sukaar Welfare Organization | Sindh, Pakistan",
    template: "%s | Sukaar Welfare Organization",
  },
  description:
    "Sukaar Welfare Organization is a Sindh-based non-profit working in education, health, livelihoods, human rights, youth and women empowerment, resilience and community development.",
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="en">
      <body className={`${manrope.variable} antialiased`}>
        {children}
      </body>
    </html>
  );
}
