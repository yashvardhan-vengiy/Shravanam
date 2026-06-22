"use client";

import { useState } from "react";
import { useRouter } from "next/navigation";
import { createClient } from "@/lib/supabase/client";

export default function AdminLectureForm() {
  const router = useRouter();
  const [saving, setSaving] = useState(false);
  const [form, setForm] = useState({
    title: "",
    speaker: "",
    category: "",
    series: "",
    duration_minutes: "30",
    language: "English",
    source_name: "",
    source_url: "",
    youtube_url: "",
    tags: "",
    difficulty_level: "Beginner",
  });

  const update = (key: string, value: string) => setForm((prev) => ({ ...prev, [key]: value }));

  const submit = async (event: React.FormEvent) => {
    event.preventDefault();
    setSaving(true);

    const supabase = createClient();

    const { error } = await supabase.from("lectures").insert({
      title: form.title,
      speaker: form.speaker || null,
      category: form.category || null,
      series: form.series || null,
      duration_minutes: Number(form.duration_minutes || 0),
      language: form.language || "English",
      source_name: form.source_name || null,
      source_url: form.source_url || null,
      youtube_url: form.youtube_url || null,
      tags: form.tags ? form.tags.split(",").map((tag) => tag.trim()).filter(Boolean) : [],
      difficulty_level: form.difficulty_level || null,
    });

    setSaving(false);

    if (error) {
      alert(error.message);
    } else {
      alert("Lecture added.");
      setForm({
        title: "",
        speaker: "",
        category: "",
        series: "",
        duration_minutes: "30",
        language: "English",
        source_name: "",
        source_url: "",
        youtube_url: "",
        tags: "",
        difficulty_level: "Beginner",
      });
      router.refresh();
    }
  };

  return (
    <form onSubmit={submit} className="rounded-3xl bg-white p-6 shadow-sm">
      <h2 className="text-2xl font-extrabold">Add Lecture Metadata</h2>
      <p className="mt-2 text-sm text-gray-600">Only add external source links. Do not upload or store audio.</p>

      <div className="mt-6 grid gap-5 md:grid-cols-2">
        <Input label="Title" value={form.title} onChange={(v) => update("title", v)} required />
        <Input label="Speaker" value={form.speaker} onChange={(v) => update("speaker", v)} />
        <Input label="Category" value={form.category} onChange={(v) => update("category", v)} />
        <Input label="Series" value={form.series} onChange={(v) => update("series", v)} />
        <Input label="Duration Minutes" type="number" value={form.duration_minutes} onChange={(v) => update("duration_minutes", v)} />
        <Input label="Language" value={form.language} onChange={(v) => update("language", v)} />
        <Input label="Source Name" value={form.source_name} onChange={(v) => update("source_name", v)} placeholder="ISKCON Desire Tree" />
        <Input label="Source URL" value={form.source_url} onChange={(v) => update("source_url", v)} placeholder="https://..." />
        <Input label="YouTube URL" value={form.youtube_url} onChange={(v) => update("youtube_url", v)} placeholder="https://youtube.com/..." />
        <Input label="Difficulty Level" value={form.difficulty_level} onChange={(v) => update("difficulty_level", v)} />
      </div>

      <label className="mt-5 block">
        <span className="text-sm font-semibold text-gray-700">Tags, comma separated</span>
        <input value={form.tags} onChange={(e) => update("tags", e.target.value)} className="mt-2 w-full rounded-xl border px-4 py-3" placeholder="gita, japa, surrender" />
      </label>

      <button disabled={saving} className="mt-6 rounded-xl bg-orange-600 px-5 py-3 font-semibold text-white hover:bg-orange-700 disabled:opacity-60">
        {saving ? "Adding..." : "Add Lecture"}
      </button>
    </form>
  );
}

function Input({ label, value, onChange, type = "text", required = false, placeholder = "" }: { label: string; value: string; onChange: (value: string) => void; type?: string; required?: boolean; placeholder?: string }) {
  return (
    <label className="block">
      <span className="text-sm font-semibold text-gray-700">{label}</span>
      <input type={type} value={value} onChange={(e) => onChange(e.target.value)} required={required} placeholder={placeholder} className="mt-2 w-full rounded-xl border px-4 py-3" />
    </label>
  );
}
