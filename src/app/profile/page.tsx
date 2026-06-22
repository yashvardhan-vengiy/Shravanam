import { redirect } from "next/navigation";
import { createClient } from "@/lib/supabase/server";
import ProfileForm from "@/components/ProfileForm";

export default async function ProfilePage() {
  const supabase = await createClient();

  const {
    data: { user },
  } = await supabase.auth.getUser();

  if (!user) redirect("/login");

  let { data: profile } = await supabase
    .from("profiles")
    .select("*")
    .eq("id", user.id)
    .maybeSingle();

  if (!profile) {
    const { data: newProfile } = await supabase
      .from("profiles")
      .insert({ id: user.id, email: user.email, name: user.user_metadata?.full_name })
      .select("*")
      .single();
    profile = newProfile;
  }

  if (!profile) {
    return <p className="p-8 text-red-600">Could not load profile.</p>;
  }

  return (
    <main className="min-h-screen bg-[#fff8ed] px-6 py-10">
      <div className="mx-auto max-w-4xl">
        <h1 className="mb-8 text-4xl font-extrabold">Profile</h1>
        <ProfileForm profile={profile} />
      </div>
    </main>
  );
}
