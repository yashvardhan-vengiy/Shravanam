import type { Metadata } from "next";
import Link from "next/link";
import "./globals.css";
import { createClient } from "@/lib/supabase/server";
import AuthButton from "@/components/AuthButton";

export const metadata: Metadata = {
  title: "Shravanam — Bhakti Hearing Dashboard",
  description: "Organize and track devotional hearing from trusted external sources.",
};

async function Navbar() {
  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  return (
    <header className="border-b border-orange-100 bg-white/90 backdrop-blur">
      <nav className="mx-auto flex max-w-7xl items-center justify-between px-6 py-4">
        <Link href="/" className="text-xl font-extrabold text-orange-700">
          Shravanam
        </Link>

        <div className="hidden items-center gap-5 text-sm font-medium text-gray-700 md:flex">
          <Link href="/lectures" className="hover:text-orange-700">Lectures</Link>
          <Link href="/sources" className="hover:text-orange-700">Source Hub</Link>
          <Link href="/dashboard" className="hover:text-orange-700">Dashboard</Link>
          <Link href="/lists" className="hover:text-orange-700">Lists</Link>
          <Link href="/profile" className="hover:text-orange-700">Profile</Link>
          <Link href="/admin" className="hover:text-orange-700">Admin</Link>
        </div>

        <AuthButton userEmail={user?.email || null} />
      </nav>
    </header>
  );
}

export default function RootLayout({ children }: Readonly<{ children: React.ReactNode }>) {
  return (
    <html lang="en">
      <body>
        <Navbar />
        {children}
      </body>
    </html>
  );
}
