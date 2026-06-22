import { redirect } from "next/navigation";
import { createClient } from "@/lib/supabase/server";
import AdminLectureForm from "@/components/AdminLectureForm";

export default async function AdminPage() {
  const supabase = await createClient();

  const {
    data: { user },
  } = await supabase.auth.getUser();

  if (!user) redirect("/login");

  const { data: adminRow } = await supabase
    .from("admin_emails")
    .select("email")
    .eq("email", user.email)
    .maybeSingle();

  if (!adminRow) {
    return (
      <main className="min-h-screen bg-[#fff8ed] px-6 py-10">
        <div className="mx-auto max-w-3xl rounded-3xl bg-white p-8 shadow-sm">
          <h1 className="text-3xl font-extrabold">Admin Access Needed</h1>
          <p className="mt-4 leading-7 text-gray-700">
            Your email is not added as an admin. In Supabase SQL Editor, run:
          </p>
          <pre className="mt-4 overflow-x-auto rounded-2xl bg-gray-950 p-4 text-sm text-white">
{`insert into public.admin_emails (email)
values ('${user.email}')
on conflict do nothing;`}
          </pre>
        </div>
      </main>
    );
  }

  return (
    <main className="min-h-screen bg-[#fff8ed] px-6 py-10">
      <div className="mx-auto max-w-5xl">
        <h1 className="mb-8 text-4xl font-extrabold">Admin Panel</h1>
        <AdminLectureForm />
      </div>
    </main>
  );
}
