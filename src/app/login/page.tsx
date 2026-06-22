"use client";

import { createClient } from "@/lib/supabase/client";

export default function LoginPage() {
  const loginWithGoogle = async () => {
    const supabase = createClient();

    await supabase.auth.signInWithOAuth({
      provider: "google",
      options: {
        redirectTo: `${window.location.origin}/auth/callback`,
      },
    });
  };

  return (
    <main className="flex min-h-screen items-center justify-center bg-[#fff8ed] px-6">
      <div className="w-full max-w-md rounded-3xl bg-white p-8 shadow-sm">
        <h1 className="text-3xl font-extrabold text-orange-700">Shravanam</h1>
        <p className="mt-2 text-gray-600">Your Personal Bhakti Hearing Dashboard</p>

        <button
          onClick={loginWithGoogle}
          className="mt-8 w-full rounded-xl bg-orange-600 px-4 py-3 font-semibold text-white hover:bg-orange-700"
        >
          Continue with Google
        </button>

        <p className="mt-5 text-center text-xs leading-5 text-gray-500">
          Shravanam tracks devotional hearing only. It does not host or play lectures.
        </p>
      </div>
    </main>
  );
}
