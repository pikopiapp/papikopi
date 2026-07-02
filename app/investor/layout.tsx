'use client';

import { ReactNode } from 'react';
import SharedDashboardLayout from '@/app/shared-dashboard-layout';

export default function InvestorLayout({ children }: { children: ReactNode }) {
  return <SharedDashboardLayout>{children}</SharedDashboardLayout>;
}
