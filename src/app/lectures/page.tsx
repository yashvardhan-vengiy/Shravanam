import { redirect } from "next/navigation";
import Link from "next/link";
import LectureCard from "@/components/LectureCard";
import { createClient } from "@/lib/supabase/server";

export default async function LecturesPage({ searchParams }: { searchParams?: Promise<{ q?: string; category?: string }> }) {
  const params = await searchParams;
  const q = params?.q?.trim();
  const category = params?.category?.trim();

  const supabase = await createClient();

  const {
    data: { user },
  } = await supabase.auth.getUser();

  if (!user) redirect("/login");

  let query = supabase.from("lectures").select("*").order("created_at", { ascending: false });

  if (q) {
    query = query.or(`title.ilike.%${q}%,speaker.ilike.%${q}%,series.ilike.%${q}%,category.ilike.%${q}%`);
  }

  if (category) {
    query = query.eq("category", category);
  }

  const { data: lectures, error } = await query;

  const { data: categories } = await supabase
    .from("lectures")
    .select("category")
    .not("category", "is", null)
    .order("category");

  const uniqueCategories = Array.from(new Set((categories || []).map((item) => item.category).filter(Boolean)));

  if (error) {
    return <p className="p-8 text-red-600">{error.message}</p>;
  }

  return (
    <main className="min-h-screen bg-[#fff8ed] px-6 py-10">
      <div className="mx-auto max-w-7xl">
        <div className="flex flex-col justify-between gap-5 md:flex-row md:items-end">
          <div>
            <h1 className="text-4xl font-extrabold">Lecture Library</h1>
            <p className="mt-2 text-gray-600">Open external sources such as ISKCON Desire Tree Audio and track your hearing manually.</p>
            <Link href="/sources" className="mt-4 inline-block rounded-xl border border-orange-600 bg-white px-4 py-2 text-sm font-semibold text-orange-700 hover:bg-orange-50">Open Source Hub</Link>
          </div>

          <form className="flex flex-col gap-2 sm:flex-row">
            <input name="q" defaultValue={q || ""} placeholder="Search lectures..." className="rounded-xl border bg-white px-4 py-3" />
            <select name="category" defaultValue={category || ""} className="rounded-xl border bg-white px-4 py-3">
              <option value="">All Categories</option>
              {uniqueCategories.map((cat) => (
                <option key={cat} value={cat}>{cat}</option>
              ))}
            </select>
            <button className="rounded-xl bg-orange-600 px-5 py-3 font-semibold text-white hover:bg-orange-700">Search</button>
          </form>
        </div>

        <div className="mt-8 grid gap-5 lg:grid-cols-2">
          {lectures?.map((lecture) => (
            <LectureCard key={lecture.id} lecture={lecture} userId={user?.id} />
          ))}
        </div>

        {lectures?.length === 0 && (
          <div className="mt-8 rounded-3xl bg-white p-8 text-center text-gray-600 shadow-sm">
            No lectures found.
          </div>
        )}
      </div>
    </main>
  );
}
