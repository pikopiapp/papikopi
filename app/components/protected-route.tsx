"use client";

import { useAuth } from "@/app/providers/auth-provider";
import { redirect } from "next/navigation";
import { ReactNode } from "react";

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

  if (allowedRoles && user.user_metadata?.role && !allowedRoles.includes(user.user_metadata.role)) {
    redirect("/unauthorized");
  }

  return <>{children}</>;
}
