import type { Metadata } from "next";
import "./globals.css";
import { AuthProvider } from "./providers/auth-provider";

export const metadata: Metadata = {
  title: "PapiKopi - Sistem Manajemen Outlet Kopi",
  description: "Aplikasi POS dan manajemen bisnis kopi",
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html
      lang="id"
      suppressHydrationWarning
      className="h-full antialiased"
    >
      <body suppressHydrationWarning className="min-h-full flex flex-col">
        <AuthProvider>{children}</AuthProvider>
      </body>
    </html>
  );
}