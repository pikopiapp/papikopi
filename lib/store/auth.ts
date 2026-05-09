import { create } from "zustand";

interface AuthStore {
  user: any | null; // eslint-disable-next-line @typescript-eslint/no-explicit-any
  role: string | null;
  outletId: string | null;
  loading: boolean;
  setUser: (user: any) => void; // eslint-disable-next-line @typescript-eslint/no-explicit-any
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
