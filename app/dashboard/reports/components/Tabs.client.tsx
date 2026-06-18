"use client";
import { useEffect, useState } from 'react';

export default function TabsClient({ defaultTab = 'trend' }: { defaultTab?: 'trend' | 'outlet' }) {
  const [tab, setTab] = useState<string>(defaultTab);

  useEffect(() => {
    const container = document.getElementById('reports-tabs');
    if (!container) return;
    const trend = container.querySelector<HTMLElement>('.trend-section');
    const outlet = container.querySelector<HTMLElement>('.outlet-section');
    if (tab === 'trend') {
      if (trend) trend.style.display = '';
      if (outlet) outlet.style.display = 'none';
    } else {
      if (trend) trend.style.display = 'none';
      if (outlet) outlet.style.display = '';
    }
    // reflect in URL without reloading
    try {
      const sp = new URLSearchParams(window.location.search);
      sp.set('tab', tab);
      const url = `${window.location.pathname}?${sp.toString()}`;
      window.history.replaceState({}, '', url);
    } catch (e) {
      // ignore
    }
  }, [tab]);

  return (
    <div className="mb-4 flex items-center space-x-2">
      <button type="button" onClick={() => setTab('trend')} className={`px-3 py-1 rounded ${tab === 'trend' ? 'bg-sky-600 text-white' : 'bg-white border'}`}>
        Sales Trend
      </button>
      <button type="button" onClick={() => setTab('outlet')} className={`px-3 py-1 rounded ${tab === 'outlet' ? 'bg-sky-600 text-white' : 'bg-white border'}`}>
        Per-Outlet Breakdown
      </button>
    </div>
  );
}
