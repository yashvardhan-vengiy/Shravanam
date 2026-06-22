import { notFound, redirect } from "next/navigation";
import { createClient } from "@/lib/supabase/server";
import ReflectionForm from "@/components/ReflectionForm";

export default async function LectureDetailPage({ params }: { params: Promise<{ id: string }> }) {
  const { id } = await params;
  const supabase = await createClient();

  const {
    data: { user },
  } = await supabase.auth.getUser();

  if (!user) redirect("/login");

  const { data: lecture, error } = await supabase
    .from("lectures")
    .select("*")
    .eq("id", id)
    .single();

  if (error || !lecture) notFound();

  const { data: progress } = await supabase
    .from("user_lecture_progress")
    .select("*")
    .eq("user_id", user.id)
    .eq("lecture_id", id)
    .maybeSingle();

  const lectureLink = lecture.source_url || lecture.youtube_url;

  return (
    <main className="min-h-screen bg-[#fff8ed] px-6 py-10">
      <div className="mx-auto max-w-5xl">
        <section className="rounded-3xl bg-white p-8 shadow-sm">
          <p className="font-semibold text-orange-700">{lecture.category || "Uncategorized"}</p>
          <h1 className="mt-3 text-4xl font-extrabold">{lecture.title}</h1>
          <p className="mt-3 text-gray-600">
            {lecture.speaker || "Unknown Speaker"} • {lecture.duration_minutes || 0} minutes
          </p>
          {lecture.series && <p className="mt-1 text-gray-500">Series: {lecture.series}</p>}

          <div className="mt-6 rounded-2xl border border-orange-100 bg-orange-50 p-4 text-sm leading-6 text-gray-700">
            Shravanam does not play this lecture. Open the trusted external source, hear there, then return here to track progress and reflection.
          </div>

          <div className="mt-6 flex flex-wrap gap-3">
            {lectureLink ? (
              <a href={lectureLink} target="_blank" rel="noopener noreferrer" className="rounded-xl bg-orange-600 px-5 py-3 font-semibold text-white hover:bg-orange-700">
                {lecture.source_name?.toLowerCase().includes("iskcon desire tree") ? "Open on ISKCON Desire Tree" : "Open Lecture"}
              </a>
            ) : (
              <button className="rounded-xl bg-gray-300 px-5 py-3 font-semibold text-gray-700" disabled>
                Source link not available
              </button>
            )}
          </div>
        </section>

        <section className="mt-8">
          <ReflectionForm userId={user.id} lectureId={lecture.id} existingProgress={progress} />
        </section>
      </div>
    </main>
  );
}
