"use client";

import { useEffect } from "react";

export default function DashboardError({
  error,
  reset,
}: {
  error: Error & { digest?: string };
  reset: () => void;
}) {
  useEffect(() => {
    console.error("Dashboard error:", error);
  }, [error]);

  return (
    <div className="flex flex-col items-center justify-center min-h-screen p-4">
      <h2 className="text-2xl font-bold text-red-600 mb-4">Terjadi Kesalahan</h2>
      <p className="text-gray-600 mb-6 text-center max-w-md">
        {error.message || "Gagal memuat dashboard. Silakan coba lagi."}
      </p>
      <button
        onClick={reset}
        className="px-6 py-2 bg-blue-600 text-white rounded-md hover:bg-blue-700"
      >
        Coba Lagi
      </button>
    </div>
  );
}