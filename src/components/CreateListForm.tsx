"use client";

import { useState } from "react";
import { useRouter } from "next/navigation";
import { createClient } from "@/lib/supabase/client";

export default function CreateListForm({ userId }: { userId: string }) {
  const router = useRouter();
  const [title, setTitle] = useState("");
  const [description, setDescription] = useState("");
  const [saving, setSaving] = useState(false);

  const submit = async (event: React.FormEvent) => {
    event.preventDefault();
    setSaving(true);
    const supabase = createClient();

    const { error } = await supabase.from("hearing_lists").insert({
      user_id: userId,
      title,
      description,
    });

    setSaving(false);

    if (error) {
      alert(error.message);
    } else {
      setTitle("");
      setDescription("");
      router.refresh();
    }
  };

  return (
    <form onSubmit={submit} className="rounded-3xl bg-white p-6 shadow-sm">
      <h2 className="text-xl font-extrabold">Create Hearing List</h2>
      <input
        value={title}
        onChange={(e) => setTitle(e.target.value)}
        required
        placeholder="Complete Bhagavad Gita"
        className="mt-4 w-full rounded-xl border px-4 py-3"
      />
      <textarea
        value={description}
        onChange={(e) => setDescription(e.target.value)}
        placeholder="Optional description"
        rows={3}
        className="mt-3 w-full rounded-xl border px-4 py-3"
      />
      <button disabled={saving} className="mt-4 rounded-xl bg-orange-600 px-5 py-3 font-semibold text-white hover:bg-orange-700 disabled:opacity-60">
        {saving ? "Creating..." : "Create List"}
      </button>
    </form>
  );
}
