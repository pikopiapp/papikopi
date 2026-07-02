"use client";

import { useAuth } from "@/app/providers/auth-provider";
import { redirect } from "next/navigation";
import { ReactNode } from "react";
import { getRoleFromUser } from "@/lib/admin-access";

interface ProtectedRouteProps {
  children: ReactNode;
  allowedRoles?: string[];
}

export function ProtectedRoute({ children, allowedRoles }: ProtectedRouteProps) {
  const { user, loading } = useAuth();

  if (loading) {
    return <div className="flex items-center justify-center min-h-screen">Loading...</div>;
  }

  if (!user) {
    redirect("/login");
  }

  const role = getRoleFromUser(user);

  if (allowedRoles && role && !allowedRoles.includes(role)) {
    redirect("/unauthorized");
  }

  return <>{children}</>;
}
