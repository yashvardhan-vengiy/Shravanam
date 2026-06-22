"use client";

import { useState } from "react";
import { useRouter } from "next/navigation";
import { createClient } from "@/lib/supabase/client";
import type { LectureStatus } from "@/lib/types";

type ExistingProgress = {
  status: LectureStatus;
  completion_percentage: number;
  notes: string | null;
  realizations: string | null;
  memorable_quotes: string | null;
  is_favorite: boolean;
  saved_for_later: boolean;
} | null;

export default function ReflectionForm({
  userId,
  lectureId,
  existingProgress,
}: {
  userId: string;
  lectureId: string;
  existingProgress: ExistingProgress;
}) {
  const router = useRouter();
  const [status, setStatus] = useState<LectureStatus>(existingProgress?.status || "Partially Heard");
  const [completion, setCompletion] = useState(existingProgress?.completion_percentage || 50);
  const [notes, setNotes] = useState(existingProgress?.notes || "");
  const [realizations, setRealizations] = useState(existingProgress?.realizations || "");
  const [memorableQuotes, setMemorableQuotes] = useState(existingProgress?.memorable_quotes || "");
  const [isFavorite, setIsFavorite] = useState(existingProgress?.is_favorite || false);
  const [savedForLater, setSavedForLater] = useState(existingProgress?.saved_for_later || false);
  const [saving, setSaving] = useState(false);

  const save = async () => {
    setSaving(true);
    const supabase = createClient();
    const now = new Date().toISOString();

    const { error } = await supabase.from("user_lecture_progress").upsert(
      {
        user_id: userId,
        lecture_id: lectureId,
        status,
        completion_percentage: completion,
        date_started: now,
        date_completed: status === "Completed" || status === "Heard" ? now : null,
        notes,
        realizations,
        memorable_quotes: memorableQuotes,
        is_favorite: isFavorite,
        saved_for_later: savedForLater,
        updated_at: now,
      },
      { onConflict: "user_id,lecture_id" }
    );

    setSaving(false);

    if (error) {
      alert(error.message);
    } else {
      alert("Reflection saved.");
      router.refresh();
    }
  };

  return (
    <div className="rounded-3xl bg-white p-6 shadow-sm">
      <h2 className="text-2xl font-extrabold">Write Reflection</h2>

      <div className="mt-6 grid gap-5 md:grid-cols-2">
        <label className="block">
          <span className="text-sm font-semibold text-gray-700">Status</span>
          <select
            value={status}
            onChange={(e) => setStatus(e.target.value as LectureStatus)}
            className="mt-2 w-full rounded-xl border px-4 py-3"
          >
            <option>Not Started</option>
            <option>Planned</option>
            <option>Partially Heard</option>
            <option>Heard</option>
            <option>Completed</option>
            <option>Revisit Later</option>
          </select>
        </label>

        <label className="block">
          <span className="text-sm font-semibold text-gray-700">Completion Percentage</span>
          <input
            type="number"
            min="0"
            max="100"
            value={completion}
            onChange={(e) => setCompletion(Number(e.target.value))}
            className="mt-2 w-full rounded-xl border px-4 py-3"
          />
        </label>
      </div>

      <label className="mt-5 block">
        <span className="text-sm font-semibold text-gray-700">Personal Notes</span>
        <textarea value={notes} onChange={(e) => setNotes(e.target.value)} rows={4} className="mt-2 w-full rounded-xl border px-4 py-3" />
      </label>

      <label className="mt-5 block">
        <span className="text-sm font-semibold text-gray-700">Realizations</span>
        <textarea value={realizations} onChange={(e) => setRealizations(e.target.value)} rows={4} className="mt-2 w-full rounded-xl border px-4 py-3" />
      </label>

      <label className="mt-5 block">
        <span className="text-sm font-semibold text-gray-700">Memorable Quotes</span>
        <textarea value={memorableQuotes} onChange={(e) => setMemorableQuotes(e.target.value)} rows={3} className="mt-2 w-full rounded-xl border px-4 py-3" />
      </label>

      <div className="mt-5 flex flex-wrap gap-5 text-sm font-semibold">
        <label className="flex items-center gap-2">
          <input type="checkbox" checked={isFavorite} onChange={(e) => setIsFavorite(e.target.checked)} />
          Favorite
        </label>
        <label className="flex items-center gap-2">
          <input type="checkbox" checked={savedForLater} onChange={(e) => setSavedForLater(e.target.checked)} />
          Saved for Later
        </label>
      </div>

      <button onClick={save} disabled={saving} className="mt-6 rounded-xl bg-orange-600 px-5 py-3 font-semibold text-white hover:bg-orange-700 disabled:opacity-60">
        {saving ? "Saving..." : "Save Reflection"}
      </button>
    </div>
  );
}
