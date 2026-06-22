import { redirect } from "next/navigation";
import { ExternalLink, Library, Search, ShieldCheck } from "lucide-react";
import { createClient } from "@/lib/supabase/server";
import { idtSources } from "@/lib/idtSources";

export default async function SourcesPage() {
  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  if (!user) redirect("/login");

  const categories = Array.from(new Set(idtSources.map((source) => source.category)));

  return (
    <main className="min-h-screen bg-[#fff8ed] px-6 py-10">
      <div className="mx-auto max-w-7xl">
        <section className="rounded-[2rem] border border-orange-100 bg-white p-8 shadow-sm">
          <p className="font-semibold text-orange-700">External Source Hub</p>
          <h1 className="mt-3 text-4xl font-extrabold">ISKCON Desire Tree Audio Source Map</h1>
          <p className="mt-4 max-w-3xl leading-8 text-gray-700">
            Shravanam does not host or play audio. Use this hub to open trusted external source folders, hear there, then return to Shravanam to mark progress, save lists, and write reflections.
          </p>

          <div className="mt-6 grid gap-4 md:grid-cols-3">
            <Info icon={<Library />} title="Source-first" text="Content remains on external trusted websites." />
            <Info icon={<Search />} title="Find and open" text="Open archive folders in a new browser tab." />
            <Info icon={<ShieldCheck />} title="Track privately" text="Your progress stays in your personal dashboard." />
          </div>
        </section>

        <section className="mt-8 rounded-[2rem] bg-white p-6 shadow-sm">
          <h2 className="text-2xl font-extrabold">Browse Source Categories</h2>
          <div className="mt-4 flex flex-wrap gap-2">
            {categories.map((category) => (
              <a key={category} href={`#${category.replaceAll(" ", "-")}`} className="rounded-full bg-orange-50 px-4 py-2 text-sm font-semibold text-orange-700 hover:bg-orange-100">
                {category}
              </a>
            ))}
          </div>
        </section>

        <div className="mt-8 space-y-8">
          {categories.map((category) => (
            <section key={category} id={category.replaceAll(" ", "-")}>
              <h2 className="mb-4 text-2xl font-extrabold">{category}</h2>
              <div className="grid gap-5 lg:grid-cols-2">
                {idtSources.filter((source) => source.category === category).map((source) => (
                  <article key={source.title} className="rounded-3xl border border-orange-100 bg-white p-5 shadow-sm">
                    <div className="flex items-start justify-between gap-4">
                      <div>
                        <p className="text-xs font-semibold uppercase tracking-wide text-orange-700">{source.sourceName}</p>
                        <h3 className="mt-2 text-xl font-extrabold">{source.title}</h3>
                        <p className="mt-2 leading-7 text-gray-600">{source.description}</p>
                      </div>
                    </div>
                    <a href={source.url} target="_blank" rel="noopener noreferrer" className="mt-5 inline-flex items-center gap-2 rounded-xl bg-orange-600 px-4 py-2 text-sm font-semibold text-white hover:bg-orange-700">
                      Open External Source <ExternalLink size={16} />
                    </a>
                  </article>
                ))}
              </div>
            </section>
          ))}
        </div>
      </div>
    </main>
  );
}

function Info({ icon, title, text }: { icon: React.ReactNode; title: string; text: string }) {
  return (
    <div className="rounded-2xl border border-orange-100 bg-orange-50 p-4">
      <div className="mb-3 text-orange-700">{icon}</div>
      <h3 className="font-bold">{title}</h3>
      <p className="mt-1 text-sm text-gray-600">{text}</p>
    </div>
  );
}
