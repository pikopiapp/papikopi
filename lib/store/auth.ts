import { create } from "zustand";

export type AppUser = {
  id?: string;
  email?: string | null;
  user_metadata?: {
    role?: string | null;
    full_name?: string | null;
    [key: string]: unknown;
  } | null;
  app_metadata?: {
    role?: string | null;
    'x-hasura-default-role'?: string;
    'x-hasura-role'?: string;
    [key: string]: unknown;
  } | null;
  [key: string]: unknown;
} | null;

interface AuthStore {
  user: AppUser;
  role: string | null;
  outletId: string | null;
  loading: boolean;
  setUser: (user: AppUser) => void;  
  setRole: (role: string | null) => void;
  setOutletId: (outletId: string | null) => void;
  setLoading: (loading: boolean) => void;
  logout: () => void;
}

export const useAuthStore = create<AuthStore>((set) => ({
  user: null,
  role: null,
  outletId: null,
  loading: true,
  setUser: (user) => set({ user }),
  setRole: (role) => set({ role }),
  setOutletId: (outletId) => set({ outletId }),
  setLoading: (loading) => set({ loading }),
  logout: () => set({ user: null, role: null, outletId: null }),
}));
