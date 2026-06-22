import { redirect } from "next/navigation";
import { createClient } from "@/lib/supabase/server";
import { calculateCurrentStreak, calculateLongestStreak, calculateTotalHours, monthlyMinutes, topByField } from "@/lib/analytics";

export default async function DashboardPage() {
  const supabase = await createClient();

  const {
    data: { user },
  } = await supabase.auth.getUser();

  if (!user) redirect("/login");

  const { data: profile } = await supabase
    .from("profiles")
    .select("daily_target_minutes,name")
    .eq("id", user.id)
    .maybeSingle();

  const { data: progress } = await supabase
    .from("user_lecture_progress")
    .select(`
      *,
      lectures (
        title,
        speaker,
        category,
        duration_minutes
      )
    `)
    .eq("user_id", user.id)
    .order("updated_at", { ascending: false });

  const rows = progress || [];
  const totalHours = calculateTotalHours(rows);
  const completed = rows.filter((p) => p.status === "Completed" || p.status === "Heard").length;
  const pending = rows.filter((p) => p.status === "Planned" || p.status === "Partially Heard" || p.saved_for_later).length;
  const currentStreak = calculateCurrentStreak(rows);
  const longestStreak = calculateLongestStreak(rows);
  const monthMinutes = monthlyMinutes(rows);
  const dailyTarget = profile?.daily_target_minutes || 30;
  const monthlyGoal = dailyTarget * 30;
  const monthlyProgress = monthlyGoal > 0 ? Math.min(100, Math.round((monthMinutes / monthlyGoal) * 100)) : 0;
  const favoriteSpeaker = topByField(rows, "speaker");
  const favoriteCategory = topByField(rows, "category");

  return (
    <main className="min-h-screen bg-[#fff8ed] px-6 py-10">
      <div className="mx-auto max-w-7xl">
        <h1 className="text-4xl font-extrabold">Your Hearing Dashboard</h1>
        <p className="mt-2 text-gray-600">Hare Krishna{profile?.name ? `, ${profile.name}` : ""}. Track your devotional hearing journey.</p>

        <div className="mt-8 grid gap-5 md:grid-cols-2 lg:grid-cols-4">
          <Stat title="Total Hours Heard" value={totalHours.toFixed(1)} />
          <Stat title="Lectures Completed" value={String(completed)} />
          <Stat title="Today’s Hearing Goal" value={`${dailyTarget} min`} />
          <Stat title="Current Streak" value={`${currentStreak} days`} />
          <Stat title="Longest Streak" value={`${longestStreak} days`} />
          <Stat title="Monthly Hearing Progress" value={`${monthlyProgress}%`} />
          <Stat title="Favorite Speaker" value={favoriteSpeaker} small />
          <Stat title="Favorite Category" value={favoriteCategory} small />
        </div>

        <div className="mt-8 grid gap-6 lg:grid-cols-[1fr_0.7fr]">
          <section className="rounded-3xl bg-white p-6 shadow-sm">
            <h2 className="text-2xl font-extrabold">Recent Progress</h2>
            <div className="mt-5 space-y-3">
              {rows.slice(0, 12).map((item) => (
                <div key={item.id} className="flex items-center justify-between gap-4 rounded-2xl border p-4">
                  <div>
                    <p className="font-semibold">{item.lectures?.title}</p>
                    <p className="text-sm text-gray-500">{item.lectures?.speaker} • {item.lectures?.category}</p>
                  </div>
                  <div className="text-right">
                    <p className="font-semibold text-orange-700">{item.status}</p>
                    <p className="text-sm text-gray-500">{item.completion_percentage}%</p>
                  </div>
                </div>
              ))}
              {rows.length === 0 && <p className="text-gray-600">No progress yet. Start from the Lecture Library.</p>}
            </div>
          </section>

          <section className="rounded-3xl bg-white p-6 shadow-sm">
            <h2 className="text-2xl font-extrabold">Pending Lectures</h2>
            <p className="mt-4 text-5xl font-extrabold text-orange-700">{pending}</p>
            <p className="mt-3 text-gray-600">Lectures planned, partially heard, or saved for later.</p>

            <div className="mt-8">
              <p className="mb-2 text-sm font-semibold text-gray-700">Monthly Goal</p>
              <div className="h-3 overflow-hidden rounded-full bg-orange-100">
                <div className="h-full rounded-full bg-orange-600" style={{ width: `${monthlyProgress}%` }} />
              </div>
              <p className="mt-2 text-sm text-gray-500">{Math.round(monthMinutes)} / {monthlyGoal} minutes</p>
            </div>
          </section>
        </div>
      </div>
    </main>
  );
}

function Stat({ title, value, small = false }: { title: string; value: string; small?: boolean }) {
  return (
    <div className="rounded-3xl bg-white p-6 shadow-sm">
      <p className="text-sm text-gray-500">{title}</p>
      <h2 className={`mt-2 font-extrabold ${small ? "text-2xl" : "text-3xl"}`}>{value}</h2>
    </div>
  );
}
