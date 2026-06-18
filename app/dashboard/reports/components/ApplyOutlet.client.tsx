"use client";
import { useEffect } from 'react';
import { useRouter, usePathname, useSearchParams } from 'next/navigation';
import { useAuthStore } from '@/lib/store/auth';

export default function ApplyOutletClient() {
  const router = useRouter();
  const params = useSearchParams();
  const pathname = usePathname();
  const { outletId } = useAuthStore();

  useEffect(() => {
    if (!outletId) return;
    if (params.get('outlet')) return;
    const search = params.toString();
    const sep = search ? '&' : '';
    router.replace(`${pathname}${search ? '?' + search : ''}${sep}outlet=${encodeURIComponent(outletId)}`);
  }, [outletId, params, pathname, router]);

  return null;
}
