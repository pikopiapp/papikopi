"use client";

import { useState } from 'react';
import { useRouter, useSearchParams } from 'next/navigation';
import { format, startOfYear, startOfMonth, startOfWeek, subDays } from 'date-fns';

export default function PeriodSelector({ initialPeriod, initialStart, initialEnd }:{ initialPeriod?: string; initialStart?: string; initialEnd?: string }){
  const router = useRouter();
  const searchParams = useSearchParams();
  const currentParam = searchParams.get('period') || initialPeriod || 'wtd';
  const [customStart, setCustomStart] = useState(initialStart || '');
  const [customEnd, setCustomEnd] = useState(initialEnd || '');

  const setPeriod = (p: string) => {
    const params = new URLSearchParams(Array.from(searchParams.entries()));
    params.set('period', p);
    // compute and show period range in the inputs immediately
    const today = new Date();
    let s = '';
    let e = format(today, 'yyyy-MM-dd');
    if (p === 'ytd') {
      s = format(startOfYear(today), 'yyyy-MM-dd');
    } else if (p === 'mtd') {
      s = format(startOfMonth(today), 'yyyy-MM-dd');
    } else if (p === 'wtd') {
      s = format(startOfWeek(today, { weekStartsOn: 1 }), 'yyyy-MM-dd');
    } else if (p === 'last7') {
      s = format(subDays(today, 6), 'yyyy-MM-dd');
    }
    if (p !== 'custom') {
      // show the computed range in inputs but remove explicit params so server-side page picks period
      params.delete('start');
      params.delete('end');
      setCustomStart(s);
      setCustomEnd(e);
    } else {
      if (customStart) params.set('start', customStart);
      if (customEnd) params.set('end', customEnd);
    }
    const url = `${location.pathname}?${params.toString()}`;
    router.push(url);
  };

  const applyCustom = () => {
    const params = new URLSearchParams(Array.from(searchParams.entries()));
    params.set('period', 'custom');
    if (customStart) params.set('start', customStart);
    if (customEnd) params.set('end', customEnd);
    const url = `${location.pathname}?${params.toString()}`;
    router.push(url);
  };

  const btn = (p: string, label: string) => (
    <button
      onClick={() => setPeriod(p)}
      className={`px-3 py-1 rounded text-sm font-medium transition-colors ${currentParam === p ? 'bg-blue-600 text-white' : 'bg-gray-100 hover:bg-gray-200 text-gray-700'}`}
    >
      {label}
    </button>
  );

  return (
    <div className="flex items-center gap-3 flex-wrap">
      <div className="flex gap-2">
        {btn('ytd', 'Tahun ini')}
        {btn('mtd', 'Bulan ini')}
        {btn('wtd', 'Minggu ini')}
        {btn('last7', '7 Hari')}
        {btn('custom', 'Rentang')}
      </div>

      <div className="flex items-center gap-2">
        <input type="date" value={customStart} onChange={(e)=>setCustomStart(e.target.value)} className="border px-2 py-1 rounded" />
        <span className="text-sm text-gray-500">—</span>
        <input type="date" value={customEnd} onChange={(e)=>setCustomEnd(e.target.value)} className="border px-2 py-1 rounded" />
        <button onClick={applyCustom} className="px-3 py-1 bg-blue-600 text-white rounded">Terapkan</button>
      </div>
    </div>
  );
}
