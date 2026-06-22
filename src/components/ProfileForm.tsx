"use client";

import { useState } from "react";
import { useRouter } from "next/navigation";
import { createClient } from "@/lib/supabase/client";

type Profile = {
  id: string;
  name: string | null;
  email: string | null;
  language: string | null;
  timezone: string | null;
  daily_target_minutes: number | null;
};

export default function ProfileForm({ profile }: { profile: Profile }) {
  const router = useRouter();
  const [name, setName] = useState(profile.name || "");
  const [language, setLanguage] = useState(profile.language || "English");
  const [timezone, setTimezone] = useState(profile.timezone || "Asia/Kolkata");
  const [dailyTarget, setDailyTarget] = useState(profile.daily_target_minutes || 30);
  const [saving, setSaving] = useState(false);

  const save = async () => {
    setSaving(true);
    const supabase = createClient();
    const { error } = await supabase.from("profiles").update({
      name,
      language,
      timezone,
      daily_target_minutes: dailyTarget,
      updated_at: new Date().toISOString(),
    }).eq("id", profile.id);
    setSaving(false);

    if (error) {
      alert(error.message);
    } else {
      alert("Profile updated.");
      router.refresh();
    }
  };

  return (
    <div className="rounded-3xl bg-white p-6 shadow-sm">
      <h2 className="text-2xl font-extrabold">Profile Settings</h2>
      <p className="mt-2 text-sm text-gray-600">{profile.email}</p>

      <div className="mt-6 grid gap-5 md:grid-cols-2">
        <label>
          <span className="text-sm font-semibold text-gray-700">Name</span>
          <input value={name} onChange={(e) => setName(e.target.value)} className="mt-2 w-full rounded-xl border px-4 py-3" />
        </label>
        <label>
          <span className="text-sm font-semibold text-gray-700">Language</span>
          <input value={language} onChange={(e) => setLanguage(e.target.value)} className="mt-2 w-full rounded-xl border px-4 py-3" />
        </label>
        <label>
          <span className="text-sm font-semibold text-gray-700">Timezone</span>
          <input value={timezone} onChange={(e) => setTimezone(e.target.value)} className="mt-2 w-full rounded-xl border px-4 py-3" />
        </label>
        <label>
          <span className="text-sm font-semibold text-gray-700">Daily Hearing Target Minutes</span>
          <input type="number" min="1" value={dailyTarget} onChange={(e) => setDailyTarget(Number(e.target.value))} className="mt-2 w-full rounded-xl border px-4 py-3" />
        </label>
      </div>

      <button onClick={save} disabled={saving} className="mt-6 rounded-xl bg-orange-600 px-5 py-3 font-semibold text-white hover:bg-orange-700 disabled:opacity-60">
        {saving ? "Saving..." : "Save Profile"}
      </button>
    </div>
  );
}
