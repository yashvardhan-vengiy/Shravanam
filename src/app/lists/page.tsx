import { redirect } from "next/navigation";
import { createClient } from "@/lib/supabase/server";
import CreateListForm from "@/components/CreateListForm";

export default async function ListsPage() {
  const supabase = await createClient();

  const {
    data: { user },
  } = await supabase.auth.getUser();

  if (!user) redirect("/login");

  const { data: lists, error } = await supabase
    .from("hearing_lists")
    .select(`
      *,
      hearing_list_items (
        id,
        lectures (
          id,
          title,
          speaker,
          category,
          duration_minutes
        )
      )
    `)
    .eq("user_id", user.id)
    .order("created_at", { ascending: false });

  if (error) {
    return <p className="p-8 text-red-600">{error.message}</p>;
  }

  return (
    <main className="min-h-screen bg-[#fff8ed] px-6 py-10">
      <div className="mx-auto max-w-7xl">
        <h1 className="text-4xl font-extrabold">Hearing Lists</h1>
        <p className="mt-2 text-gray-600">Create personal hearing plans and organize lectures.</p>

        <div className="mt-8 grid gap-6 lg:grid-cols-[0.8fr_1.2fr]">
          <CreateListForm userId={user.id} />

          <section className="space-y-5">
            {lists?.map((list) => {
              const items = list.hearing_list_items || [];
              const totalMinutes = items.reduce((sum: number, item: any) => sum + (item.lectures?.duration_minutes || 0), 0);

              return (
                <div key={list.id} className="rounded-3xl bg-white p-6 shadow-sm">
                  <div className="flex justify-between gap-4">
                    <div>
                      <h2 className="text-2xl font-extrabold">{list.title}</h2>
                      {list.description && <p className="mt-1 text-gray-600">{list.description}</p>}
                    </div>
                    <div className="text-right text-sm text-gray-500">
                      <p>{items.length} lectures</p>
                      <p>{Math.round(totalMinutes / 60)} hrs</p>
                    </div>
                  </div>

                  <div className="mt-5 space-y-3">
                    {items.slice(0, 8).map((item: any) => (
                      <div key={item.id} className="rounded-2xl border p-4">
                        <p className="font-semibold">{item.lectures?.title}</p>
                        <p className="text-sm text-gray-500">{item.lectures?.speaker} • {item.lectures?.category}</p>
                      </div>
                    ))}
                    {items.length === 0 && <p className="text-sm text-gray-500">No lectures added yet.</p>}
                  </div>
                </div>
              );
            })}
            {lists?.length === 0 && <div className="rounded-3xl bg-white p-8 text-center text-gray-600 shadow-sm">No lists yet.</div>}
          </section>
        </div>
      </div>
    </main>
  );
}
