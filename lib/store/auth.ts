import { create } from "zustand";

interface AuthStore {
  user: any | null; // eslint-disable-next-line @typescript-eslint/no-explicit-any
  role: string | null;
  outletId: string | null;
  setUser: (user: any) => void; // eslint-disable-next-line @typescript-eslint/no-explicit-any
  setRole: (role: string | null) => void;
  setOutletId: (outletId: string | null) => void;
  logout: () => void;
}

export const useAuthStore = create<AuthStore>((set) => ({
  user: null,
  role: null,
  outletId: null,
  setUser: (user) => set({ user }),
  setRole: (role) => set({ role }),
  setOutletId: (outletId) => set({ outletId }),
  logout: () => set({ user: null, role: null, outletId: null }),
}));
