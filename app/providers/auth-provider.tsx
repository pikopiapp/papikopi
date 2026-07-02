"use client";

import { createContext, useContext, useEffect, useState, useCallback } from "react";
import type { AppUser } from '@/lib/store/auth';
import { supabase } from "@/lib/supabase";
import { useAuthStore } from "@/lib/store/auth";
import { getRoleFromUser } from '@/lib/admin-access';

interface AuthContextType {
  user: AppUser;
  loading: boolean;
  error: string | null;
  login: (email: string, password: string) => Promise<{ user: AppUser; profile: { role?: string | null; outlet_id?: string | null } | null } | null>;
  logout: () => Promise<void>;
}

const AuthContext = createContext<AuthContextType | undefined>(undefined);

const AUTH_COOKIE_OPTIONS = "path=/; sameSite=lax" + (typeof window !== "undefined" && window.location.protocol === "https:" ? "; secure" : "");

const setAuthTokenCookies = (accessToken: string | null | undefined, refreshToken: string | null | undefined) => {
  if (typeof document === "undefined") return;

  if (accessToken) {
    document.cookie = `sb-access-token=${encodeURIComponent(accessToken)}; ${AUTH_COOKIE_OPTIONS}`;
  } else {
    document.cookie = `sb-access-token=; Max-Age=0; ${AUTH_COOKIE_OPTIONS}`;
  }

  if (refreshToken) {
    document.cookie = `sb-refresh-token=${encodeURIComponent(refreshToken)}; ${AUTH_COOKIE_OPTIONS}`;
  } else {
    document.cookie = `sb-refresh-token=; Max-Age=0; ${AUTH_COOKIE_OPTIONS}`;
  }
};

export function AuthProvider({ children }: { children: React.ReactNode }) {
  const [loading, setLocalLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);
  const { user, setUser, setRole, setOutletId, setLoading } = useAuthStore();

  // Helper function to fetch user profile with timeout
  const fetchUserProfile = useCallback(async (userId: string) => {
    try {
      const { data: sessionData } = await supabase.auth.getSession();
      const accessToken = sessionData.session?.access_token;

      // Fetch user profile with 5 second timeout
      const controller = new AbortController();
      const timeoutId = window.setTimeout(() => controller.abort(), 5000);

      try {
        const response = await fetch("/api/auth/user", {
          method: "GET",
          headers: {
            ...(accessToken ? { Authorization: `Bearer ${accessToken}` } : {}),
          },
          signal: controller.signal,
        });

        clearTimeout(timeoutId);

        if (!response.ok) {
          const text = await response.text();
          console.warn("Failed to fetch user profile:", response.status, text);
          return null;
        }

        const userData = await response.json();
        if (userData?.id) {
          return userData;
        }

        console.log("User profile not found for", userId);
        return null;
      } catch (timeoutErr) {
        clearTimeout(timeoutId);
        if (timeoutErr instanceof DOMException && timeoutErr.name === 'AbortError') {
          console.warn('Profile fetch aborted after timeout');
          return null;
        }
        console.error("Profile fetch timeout:", timeoutErr);
        return null;
      }
    } catch (err) {
      console.error("Error in fetchUserProfile:", err);
      return null;
    }
  }, []);

  const syncSessionCookies = (accessToken: string | null | undefined, refreshToken: string | null | undefined) => {
    setAuthTokenCookies(accessToken, refreshToken);
  };

  useEffect(() => {
    let mounted = true;

    const checkAuth = async () => {
      try {
        // Use getSession instead of getUser to avoid extra API call
        const { data, error } = await supabase.auth.getSession();
        if (error) {
          console.error("Session check error:", error);
          return;
        }

        if (!mounted) return;

        if (data.session?.user) {
          syncSessionCookies(data.session.access_token, data.session.refresh_token);

          // Set user immediately without waiting for profile
          setUser(data.session.user as unknown as AppUser);
          
          // Try to fetch profile in background
          const userData = await fetchUserProfile(data.session.user.id);
          if (mounted) {
            if (userData?.role) {
              setRole(userData.role);
            } else {
              setRole(getRoleFromUser(data.session.user));
            }
            setOutletId(userData?.outlet_id ?? null);
          }
        } else {
          syncSessionCookies(null, null);
        }
      } catch (err) {
        console.error("Auth check error:", err);
      } finally {
        if (mounted) {
          setLocalLoading(false);
          setLoading(false);
        }
      }
    };

    checkAuth();

    // Auth state listener - just update state and keep cookies in sync
    const { data: authListener } = supabase.auth.onAuthStateChange(
      async (event, session) => {
        if (!mounted) return;

        if (session?.user) {
          syncSessionCookies(session.access_token, session.refresh_token);
          setUser(session.user as unknown as AppUser);
          
          // Fetch profile in background
          const userData = await fetchUserProfile(session.user.id);
          if (mounted) {
            if (userData?.role) {
              setRole(userData.role);
            } else {
              setRole(getRoleFromUser(session.user));
            }
            setOutletId(userData?.outlet_id ?? null);
          }
        } else {
          syncSessionCookies(null, null);
          setUser(null);
          setRole(null);
          setOutletId(null);
        }
      }
    );

    return () => {
      mounted = false;
      authListener?.subscription.unsubscribe();
    };
  }, [setUser, setRole, setOutletId, setLoading, fetchUserProfile]);

  const login = async (email: string, password: string) => {
    try {
      setError(null);
      const { data, error } = await supabase.auth.signInWithPassword({ 
        email, 
        password 
      });
      
      if (error) throw error;

      if (data.session) {
        syncSessionCookies(data.session.access_token, data.session.refresh_token);
      }

      if (data.user) {
        setUser(data.user as unknown as AppUser);

        const profile = await fetchUserProfile(data.user.id);
        if (profile) {
          setRole(profile.role || getRoleFromUser(data.user));
          setOutletId(profile.outlet_id ?? null);
        } else {
          setRole(getRoleFromUser(data.user));
        }

        return { user: data.user as unknown as AppUser, profile };
      }
      return null;
    } catch (err) {
      const errorMsg = err instanceof Error ? err.message : "Login failed";
      setError(errorMsg);
      throw err;
    }
  };

  const logout = async () => {
    try {
      setError(null);
      const { error } = await supabase.auth.signOut();
      syncSessionCookies(null, null);
      if (error) throw error;
    } catch (err) {
      setError(err instanceof Error ? err.message : "Logout failed");
      throw err;
    }
  };

  return (
    <AuthContext.Provider value={{ user, loading, error, login, logout }}>
      {children}
    </AuthContext.Provider>
  );
}

export function useAuth() {
  const context = useContext(AuthContext);
  if (context === undefined) {
    throw new Error("useAuth must be used within AuthProvider");
  }
  return context;
}
