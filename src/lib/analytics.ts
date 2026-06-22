type ProgressItem = {
  status: string;
  completion_percentage: number | null;
  date_completed: string | null;
  saved_for_later: boolean | null;
  lectures: {
    title?: string | null;
    speaker?: string | null;
    category?: string | null;
    duration_minutes?: number | null;
  } | null;
};

export function calculateTotalHours(progress: ProgressItem[] = []) {
  return progress.reduce((sum, item) => {
    const duration = item.lectures?.duration_minutes || 0;
    const percentage = item.completion_percentage || 0;
    return sum + (duration * percentage) / 100 / 60;
  }, 0);
}

export function calculateCurrentStreak(progress: ProgressItem[] = []) {
  const dates = new Set(
    progress
      .filter((item) => item.date_completed)
      .map((item) => item.date_completed!.slice(0, 10))
  );

  let streak = 0;
  const today = new Date();

  for (let i = 0; i < 3650; i++) {
    const check = new Date(today);
    check.setDate(today.getDate() - i);
    const key = check.toISOString().slice(0, 10);

    if (dates.has(key)) {
      streak++;
    } else {
      if (i === 0) continue;
      break;
    }
  }

  return streak;
}

export function calculateLongestStreak(progress: ProgressItem[] = []) {
  const dates = Array.from(
    new Set(
      progress
        .filter((item) => item.date_completed)
        .map((item) => item.date_completed!.slice(0, 10))
    )
  ).sort();

  if (dates.length === 0) return 0;

  let longest = 1;
  let current = 1;

  for (let i = 1; i < dates.length; i++) {
    const previous = new Date(dates[i - 1]);
    const currentDate = new Date(dates[i]);
    const differenceDays =
      (currentDate.getTime() - previous.getTime()) / (1000 * 60 * 60 * 24);

    if (differenceDays === 1) {
      current++;
      longest = Math.max(longest, current);
    } else if (differenceDays > 1) {
      current = 1;
    }
  }

  return longest;
}

export function topByField(progress: ProgressItem[] = [], field: "speaker" | "category") {
  const totals: Record<string, number> = {};

  progress.forEach((item) => {
    const key = item.lectures?.[field] || "Unknown";
    const duration = item.lectures?.duration_minutes || 0;
    const percentage = item.completion_percentage || 0;
    totals[key] = (totals[key] || 0) + (duration * percentage) / 100;
  });

  const sorted = Object.entries(totals).sort((a, b) => b[1] - a[1]);
  return sorted[0]?.[0] || "Not enough data";
}

export function monthlyMinutes(progress: ProgressItem[] = []) {
  const now = new Date();
  const month = now.toISOString().slice(0, 7);

  return progress.reduce((sum, item) => {
    if (!item.date_completed?.startsWith(month)) return sum;
    const duration = item.lectures?.duration_minutes || 0;
    const percentage = item.completion_percentage || 0;
    return sum + (duration * percentage) / 100;
  }, 0);
}
