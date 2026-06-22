"use client";

import Link from "next/link";
import { useRouter } from "next/navigation";
import { createClient } from "@/lib/supabase/client";
import type { Lecture } from "@/lib/types";

export default function LectureCard({ lecture, userId }: { lecture: Lecture; userId?: string }) {
  const router = useRouter();

  const openLecture = () => {
    const lectureLink = lecture.source_url || lecture.youtube_url;

    if (lectureLink) {
      window.open(lectureLink, "_blank", "noopener,noreferrer");
    } else {
      alert("Source link not available.");
    }
  };

  const updateProgress = async (
    status: "Heard" | "Completed" | "Planned" | "Revisit Later",
    percentage: number,
    options?: { saved_for_later?: boolean; is_favorite?: boolean }
  ) => {
    if (!userId) {
      alert("Please login first.");
      router.push("/login");
      return;
    }

    const supabase = createClient();
    const now = new Date().toISOString();

    const payload = {
      user_id: userId,
      lecture_id: lecture.id,
      status,
      completion_percentage: percentage,
      date_started: now,
      date_completed: status === "Heard" || status === "Completed" ? now : null,
      saved_for_later: options?.saved_for_later ?? false,
      is_favorite: options?.is_favorite ?? false,
      updated_at: now,
    };

    const { error } = await supabase
      .from("user_lecture_progress")
      .upsert(payload, { onConflict: "user_id,lecture_id" });

    if (error) {
      alert(error.message);
    } else {
      alert(`Marked as ${status}.`);
      router.refresh();
    }
  };

  const addToHearingList = async () => {
    if (!userId) {
      alert("Please login first.");
      router.push("/login");
      return;
    }

    const supabase = createClient();

    let { data: lists, error: listError } = await supabase
      .from("hearing_lists")
      .select("id,title")
      .eq("user_id", userId)
      .order("created_at", { ascending: true });

    if (listError) {
      alert(listError.message);
      return;
    }

    let listId = lists?.[0]?.id;

    if (!listId) {
      const { data: newList, error: createError } = await supabase
        .from("hearing_lists")
        .insert({ user_id: userId, title: "My Hearing List" })
        .select("id")
        .single();

      if (createError) {
        alert(createError.message);
        return;
      }

      listId = newList.id;
    }

    const { error } = await supabase
      .from("hearing_list_items")
      .upsert({ list_id: listId, lecture_id: lecture.id }, { onConflict: "list_id,lecture_id" });

    if (error) {
      alert(error.message);
    } else {
      alert("Added to hearing list.");
      router.refresh();
    }
  };

  return (
    <article className="rounded-3xl border border-orange-100 bg-white p-5 shadow-sm">
      <div className="flex items-start justify-between gap-4">
        <div>
          <Link href={`/lectures/${lecture.id}`} className="text-xl font-extrabold hover:text-orange-700">
            {lecture.title}
          </Link>
          <p className="mt-2 text-sm text-gray-600">
            {lecture.speaker || "Unknown Speaker"} • {lecture.category || "Uncategorized"}
          </p>
          <p className="mt-1 text-sm text-gray-500">
            {lecture.series ? `${lecture.series} • ` : ""}{lecture.duration_minutes || 0} minutes
          </p>
        </div>

        {lecture.difficulty_level && (
          <span className="rounded-full bg-orange-50 px-3 py-1 text-xs font-semibold text-orange-700">
            {lecture.difficulty_level}
          </span>
        )}
      </div>

      {lecture.tags && lecture.tags.length > 0 && (
        <div className="mt-4 flex flex-wrap gap-2">
          {lecture.tags.slice(0, 4).map((tag) => (
            <span key={tag} className="rounded-full bg-gray-100 px-3 py-1 text-xs text-gray-600">
              {tag}
            </span>
          ))}
        </div>
      )}

      <div className="mt-5 flex flex-wrap gap-2">
        <button onClick={openLecture} className="rounded-xl bg-orange-600 px-4 py-2 text-sm font-semibold text-white hover:bg-orange-700">
          {lecture.source_name?.toLowerCase().includes("iskcon desire tree") ? "Open on ISKCON Desire Tree" : "Open Lecture"}
        </button>
        <button onClick={() => updateProgress("Heard", 100)} className="rounded-xl border px-4 py-2 text-sm font-semibold hover:bg-gray-50">
          Mark as Heard
        </button>
        <button onClick={() => updateProgress("Completed", 100)} className="rounded-xl border px-4 py-2 text-sm font-semibold hover:bg-gray-50">
          Mark as Completed
        </button>
        <button onClick={addToHearingList} className="rounded-xl border px-4 py-2 text-sm font-semibold hover:bg-gray-50">
          Add to Hearing List
        </button>
        <button onClick={() => updateProgress("Planned", 0, { saved_for_later: true })} className="rounded-xl border px-4 py-2 text-sm font-semibold hover:bg-gray-50">
          Save for Later
        </button>
        <Link href={`/lectures/${lecture.id}`} className="rounded-xl border px-4 py-2 text-sm font-semibold hover:bg-gray-50">
          Write Reflection
        </Link>
      </div>
    </article>
  );
}
