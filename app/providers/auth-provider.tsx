"use client";

import { createContext, useContext, useEffect, useState, useCallback } from "react";
import { supabase } from "@/lib/supabase";
import { useAuthStore } from "@/lib/store/auth";

interface AuthContextType {
  user: any | null; // eslint-disable-next-line @typescript-eslint/no-explicit-any
  loading: boolean;
  error: string | null;
  login: (email: string, password: string) => Promise<void>;
  logout: () => Promise<void>;
}

const AuthContext = createContext<AuthContextType | undefined>(undefined);

export function AuthProvider({ children }: { children: React.ReactNode }) {
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);
  const { user, setUser, setRole, setOutletId } = useAuthStore();

  // Helper function to fetch user profile with timeout
  const fetchUserProfile = useCallback(async (userId: string) => {
    try {
      // Fetch user profile with 5 second timeout
      const controller = new AbortController();
      const timeoutId = setTimeout(() => controller.abort(), 5000);

      try {
        const { data: userData, error: userError } = await supabase
          .from("users")
          .select("id, name, email, role, outlet_id, is_active")
          .eq("id", userId)
          .maybeSingle();

        clearTimeout(timeoutId);

        if (userData) {
          return userData;
        }

        // If no user found and no error, just return null - don't try to create
        if (!userError) {
          console.log("User profile not found for", userId);
          return null;
        }

        console.warn("Error fetching profile:", userError.message);
        return null;
      } catch (timeoutErr) {
        clearTimeout(timeoutId);
        console.error("Profile fetch timeout:", timeoutErr);
        return null;
      }
    } catch (err) {
      console.error("Error in fetchUserProfile:", err);
      return null;
    }
  }, []);

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
          // Set user immediately without waiting for profile
          setUser(data.session.user);
          
          // Try to fetch profile in background
          const userData = await fetchUserProfile(data.session.user.id);
          if (mounted && userData) {
            setRole(userData.role);
            setOutletId(userData.outlet_id);
          }
        }
      } catch (err) {
        console.error("Auth check error:", err);
      } finally {
        if (mounted) {
          setLoading(false);
        }
      }
    };

    checkAuth();

    // Auth state listener - just update state without fetching profile
    const { data: authListener } = supabase.auth.onAuthStateChange(
      async (event, session) => {
        if (!mounted) return;

        if (session?.user) {
          setUser(session.user);
          
          // Fetch profile in background
          const userData = await fetchUserProfile(session.user.id);
          if (mounted && userData) {
            setRole(userData.role);
            setOutletId(userData.outlet_id);
          }
        } else {
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
  }, [setUser, setRole, setOutletId, fetchUserProfile]);

  const login = async (email: string, password: string) => {
    try {
      setError(null);
      const { data, error } = await supabase.auth.signInWithPassword({ 
        email, 
        password 
      });
      
      if (error) throw error;

      // Set user immediately after login
      if (data.user) {
        setUser(data.user);
        // Profile will be fetched by auth state listener
      }
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
