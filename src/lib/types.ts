export type Lecture = {
  id: string;
  title: string;
  speaker: string | null;
  category: string | null;
  series: string | null;
  duration_minutes: number | null;
  language: string | null;
  lecture_date: string | null;
  source_name: string | null;
  source_url: string | null;
  youtube_url: string | null;
  thumbnail_url: string | null;
  tags: string[] | null;
  difficulty_level: string | null;
  created_at: string;
};

export type LectureStatus =
  | "Not Started"
  | "Planned"
  | "Partially Heard"
  | "Heard"
  | "Completed"
  | "Revisit Later";

export type UserLectureProgress = {
  id: string;
  user_id: string;
  lecture_id: string;
  status: LectureStatus;
  completion_percentage: number;
  date_started: string | null;
  date_completed: string | null;
  notes: string | null;
  realizations: string | null;
  memorable_quotes: string | null;
  is_favorite: boolean;
  saved_for_later: boolean;
  updated_at: string;
};
