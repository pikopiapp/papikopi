'use client';

import { useState } from 'react';
import { useRouter, useSearchParams } from 'next/navigation';

const PRESETS = [
  { key: 'ytd', label: 'YTD' },
  { key: 'mtd', label: 'MTD' },
  { key: 'wtd', label: 'WTD' },
  { key: 'custom', label: 'Custom' },
];

export default function ReturnsPeriodSelector({
  period,
  start,
  end,
}: {
  period: string;
  start: string;
  end: string;
}) {
  const router = useRouter();
  const searchParams = useSearchParams();
  const [customStart, setCustomStart] = useState(start);
  const [customEnd, setCustomEnd] = useState(end);

  const go = (nextPeriod: string, nextStart?: string, nextEnd?: string) => {
    const params = new URLSearchParams(Array.from(searchParams.entries()));
    params.set('period', nextPeriod);
    if (nextStart && nextEnd) {
      params.set('start', nextStart);
      params.set('end', nextEnd);
    } else {
      params.delete('start');
      params.delete('end');
    }
    router.push(`${window.location.pathname}?${params.toString()}`);
  };

  return (
    <div className="space-y-4">
      <div className="flex flex-wrap gap-2">
        {PRESETS.map((preset) => (
          <button
            key={preset.key}
            type="button"
            aria-pressed={period === preset.key}
            onClick={() => (preset.key === 'custom' ? go('custom', customStart, customEnd) : go(preset.key))}
            className={`px-4 py-2 rounded-lg font-semibold transition ${
              period === preset.key
                ? 'bg-[#1F4E5F] text-white'
                : 'bg-gray-100 text-gray-700 hover:bg-gray-200'
            }`}
          >
            {preset.label}
          </button>
        ))}
      </div>

      {period === 'custom' && (
        <div className="flex flex-wrap items-end gap-4">
          <div>
            <label htmlFor="returns-start" className="block text-sm font-semibold text-gray-700 mb-1">
              Dari
            </label>
            <input
              id="returns-start"
              type="date"
              value={customStart}
              onChange={(e) => setCustomStart(e.target.value)}
              className="px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-[#1F4E5F]"
            />
          </div>
          <div>
            <label htmlFor="returns-end" className="block text-sm font-semibold text-gray-700 mb-1">
              Sampai
            </label>
            <input
              id="returns-end"
              type="date"
              value={customEnd}
              onChange={(e) => setCustomEnd(e.target.value)}
              className="px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-[#1F4E5F]"
            />
          </div>
          <button
            type="button"
            onClick={() => go('custom', customStart, customEnd)}
            disabled={!customStart || !customEnd || customStart > customEnd}
            className="px-4 py-2 rounded-lg font-semibold bg-[#1F4E5F] text-white disabled:bg-gray-300 disabled:cursor-not-allowed"
          >
            Terapkan
          </button>
        </div>
      )}
    </div>
  );
}
