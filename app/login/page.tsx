"use client";

import { Suspense, useState } from "react";
import { useAuth } from "@/app/providers/auth-provider";
import { useRouter, useSearchParams } from "next/navigation";
import { getRoleFromUser } from "@/lib/admin-access";
import type { AppUser } from "@/lib/store/auth";
import { LogIn } from "lucide-react";

function LoginForm() {
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [error, setError] = useState("");
  const [loading, setLoading] = useState(false);
  const { login } = useAuth();
  const router = useRouter();
  const searchParams = useSearchParams();
  const redirectParam = searchParams?.get('redirect') || null;

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    setError("");
    setLoading(true);

    try {
      const loginResult = await login(email, password);
      const authUser = loginResult?.user as AppUser | null;
      const role = loginResult?.profile?.role || getRoleFromUser(authUser) || authUser?.role || authUser?.user_metadata?.role || authUser?.app_metadata?.role || null;

      // If a redirect query param was provided, only follow it when the
      // user's role matches the destination. Default to role-based root.
      if (redirectParam) {
        if (redirectParam.startsWith('/investor') && role === 'investor') {
          router.push(redirectParam);
          return;
        }

        if (!redirectParam.startsWith('/investor') && role !== 'investor') {
          router.push(redirectParam);
          return;
        }
        // otherwise fall through to role default
      }

      if (role === 'investor') {
        router.push('/investor');
      } else {
        router.push('/dashboard');
      }
    } catch (err) {
      setError(err instanceof Error ? err.message : "Login failed");
    } finally {
      setLoading(false);
    }
  };

  return (
    <div className="min-h-screen bg-gradient-to-br from-amber-900 to-orange-800 flex items-center justify-center p-4">
      <div className="w-full max-w-md">
        <div className="surface-card rounded-lg shadow-2xl p-8">
          <div className="flex justify-center mb-6">
            <div className="bg-amber-100 p-4 rounded-full">
              <LogIn className="w-8 h-8 text-amber-900" />
            </div>
          </div>

          <h1 className="text-2xl font-bold text-center text-gray-800 mb-2">PapiKopi</h1>
          <p className="text-center text-gray-600 mb-6">Sistem Manajemen Outlet Kopi</p>

          {error && (
            <div className="bg-red-100 border border-red-400 text-red-700 px-4 py-3 rounded mb-6">
              {error}
            </div>
          )}

          <form onSubmit={handleSubmit} className="space-y-4">
            <div>
              <label className="block text-sm font-medium text-gray-700 mb-2">Email</label>
              <input
                type="email"
                value={email}
                onChange={(e) => setEmail(e.target.value)}
                className="w-full px-4 py-2 border border-gray-300 rounded-lg focus:ring-2 focus:ring-amber-500 focus:border-transparent"
                placeholder="user@outlet.com"
                required
              />
            </div>

            <div>
              <label className="block text-sm font-medium text-gray-700 mb-2">Password</label>
              <input
                type="password"
                value={password}
                onChange={(e) => setPassword(e.target.value)}
                className="w-full px-4 py-2 border border-gray-300 rounded-lg focus:ring-2 focus:ring-amber-500 focus:border-transparent"
                placeholder="••••••••"
                required
              />
            </div>

            <button
              type="submit"
              disabled={loading}
              className="w-full bg-amber-600 hover:bg-amber-700 disabled:bg-gray-400 text-white font-bold py-2 px-4 rounded-lg transition duration-200"
            >
              {loading ? "Loading..." : "Masuk"}
            </button>
          </form>

          <p className="text-center text-gray-600 text-sm mt-4">
            Hubungi admin untuk pembuatan akun
          </p>
        </div>
      </div>
    </div>
  );
}

export default function LoginPage() {
  return (
    <Suspense fallback={<div className="min-h-screen flex items-center justify-center">Loading...</div>}>
      <LoginForm />
    </Suspense>
  );
}
