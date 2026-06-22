import Link from "next/link";
import { BookOpen, BarChart3, ListChecks, Heart } from "lucide-react";

export default function HomePage() {
  return (
    <main className="min-h-screen bg-[#fff8ed] text-gray-900">
      <section className="mx-auto grid max-w-7xl gap-12 px-6 py-20 lg:grid-cols-[1.1fr_0.9fr] lg:items-center">
        <div>
          <p className="mb-4 font-semibold text-orange-700">
            Shravanam — Your Personal Bhakti Hearing Dashboard
          </p>

          <h1 className="text-4xl font-extrabold leading-tight md:text-6xl">
            Hear with Purpose. Track Your Spiritual Hearing Journey.
          </h1>

          <p className="mt-6 max-w-2xl text-lg leading-8 text-gray-700">
            Organize devotional lectures from sources like ISKCON Desire Tree Audio, open trusted external folders, mark your hearing progress, build consistency, and reflect deeply.
          </p>

          <div className="mt-6 rounded-2xl border border-orange-200 bg-white p-5 text-sm leading-6 text-gray-700 shadow-sm">
            Shravanam does not host or play lectures. It works as a private dashboard above trusted external sources such as the ISKCON Desire Tree Audio archive. Open the original source, hear there, then return here to track completion, lists, streaks, and reflections.
          </div>

          <div className="mt-8 flex flex-wrap gap-4">
            <Link
              href="/login"
              className="rounded-xl bg-orange-600 px-6 py-3 font-semibold text-white shadow-sm hover:bg-orange-700"
            >
              Get Started
            </Link>

            <Link
              href="/sources"
              className="rounded-xl border border-orange-600 bg-white px-6 py-3 font-semibold text-orange-700 hover:bg-orange-50"
            >
              Login & Open Source Hub
            </Link>
          </div>
        </div>

        <div className="rounded-[2rem] border border-orange-100 bg-white p-6 shadow-sm">
          <div className="rounded-[1.5rem] bg-gradient-to-br from-orange-50 to-white p-6">
            <div className="mb-6 flex items-center justify-between">
              <div>
                <p className="text-sm text-gray-500">Today’s Hearing Goal</p>
                <h2 className="text-3xl font-bold text-gray-900">30 min</h2>
              </div>
              <div className="rounded-2xl bg-orange-100 p-3 text-orange-700">
                <BookOpen />
              </div>
            </div>

            <div className="grid gap-4 sm:grid-cols-2">
              <FeatureCard icon={<ListChecks />} title="Track Completion" text="Manual status and progress." />
              <FeatureCard icon={<BarChart3 />} title="See Analytics" text="Hours, streaks, categories." />
              <FeatureCard icon={<Heart />} title="Reflect Deeply" text="Notes and realizations." />
              <FeatureCard icon={<BookOpen />} title="Open Sources" text="ISKCON Desire Tree Audio, YouTube, more." />
            </div>
          </div>
        </div>
      </section>
    </main>
  );
}

function FeatureCard({ icon, title, text }: { icon: React.ReactNode; title: string; text: string }) {
  return (
    <div className="rounded-2xl border border-orange-100 bg-white p-4">
      <div className="mb-3 text-orange-700">{icon}</div>
      <h3 className="font-bold">{title}</h3>
      <p className="mt-1 text-sm text-gray-600">{text}</p>
    </div>
  );
}
