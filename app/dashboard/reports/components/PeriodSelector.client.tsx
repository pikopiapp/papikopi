"use client";

import { useEffect, useMemo, useState } from 'react';
import { useRouter, useSearchParams } from 'next/navigation';
import { endOfMonth, endOfWeek, format, parseISO, startOfMonth, startOfWeek } from 'date-fns';

type RangePreset = 'day' | 'week' | 'month' | 'custom';

function normalizePeriod(value?: string | null): RangePreset {
  switch (value) {
    case 'day':
      return 'day';
    case 'week':
    case 'wtd':
    case 'last7':
      return 'week';
    case 'month':
    case 'mtd':
    case 'ytd':
      return 'month';
    case 'custom':
      return 'custom';
    default:
      return 'month';
  }
}

function getWeekValue(date: Date) {
  const year = date.getFullYear();
  const week = Math.ceil((((Date.UTC(year, date.getMonth(), date.getDate()) - Date.UTC(year, 0, 1)) / 86400000) + 1) / 7);
  return `${year}-W${String(week).padStart(2, '0')}`;
}

function getWeekRange(value: string) {
  const match = value.match(/^(\d{4})-W(\d{1,2})$/);
  if (!match) return null;
  const year = Number(match[1]);
  const week = Number(match[2]);
  const monday = new Date(year, 0, 4);
  const day = monday.getDay() || 7;
  monday.setDate(monday.getDate() + 1 - day);
  monday.setDate(monday.getDate() + (week - 1) * 7);
  const start = new Date(monday);
  const end = new Date(monday);
  end.setDate(end.getDate() + 6);
  return { start, end };
}

function formatRangeLabel(startYmd: string, endYmd: string) {
  const start = parseISO(startYmd);
  const end = parseISO(endYmd);
  return `${format(start, 'dd MMM yyyy')} — ${format(end, 'dd MMM yyyy')} ▾`;
}

export default function PeriodSelector({ initialPeriod, initialStart, initialEnd }: { initialPeriod?: string; initialStart?: string; initialEnd?: string }) {
  const router = useRouter();
  const searchParams = useSearchParams();
  const currentParam = searchParams.get('period') || initialPeriod || 'month';
  const [preset, setPreset] = useState<RangePreset>(() => normalizePeriod(currentParam));
  const [tmpDate, setTmpDate] = useState(initialStart || format(new Date(), 'yyyy-MM-dd'));
  const [tmpWeek, setTmpWeek] = useState(initialStart ? getWeekValue(parseISO(initialStart)) : getWeekValue(new Date()));
  const [tmpMonth, setTmpMonth] = useState(initialStart ? format(parseISO(initialStart), 'yyyy-MM') : format(new Date(), 'yyyy-MM'));
  const [tmpStart, setTmpStart] = useState(initialStart || format(new Date(), 'yyyy-MM-dd'));
  const [tmpEnd, setTmpEnd] = useState(initialEnd || format(new Date(), 'yyyy-MM-dd'));
  const [pickerOpen, setPickerOpen] = useState(false);

  useEffect(() => {
    const nextStart = searchParams.get('start') || initialStart || format(new Date(), 'yyyy-MM-dd');
    const nextEnd = searchParams.get('end') || initialEnd || format(new Date(), 'yyyy-MM-dd');
    setTmpStart(nextStart);
    setTmpEnd(nextEnd);
    setTmpDate(nextStart);
    setTmpWeek(getWeekValue(parseISO(nextStart)));
    setTmpMonth(format(parseISO(nextStart), 'yyyy-MM'));
    setPreset(normalizePeriod(searchParams.get('period') || initialPeriod || 'month'));
  }, [initialEnd, initialPeriod, initialStart, searchParams]);

  const applyQuery = (nextPreset: RangePreset, startYmd: string, endYmd: string) => {
    const params = new URLSearchParams(Array.from(searchParams.entries()));
    params.set('period', nextPreset);
    if (nextPreset === 'custom') {
      params.set('start', startYmd);
      params.set('end', endYmd);
    } else {
      params.set('start', startYmd);
      params.set('end', endYmd);
    }
    const url = `${window.location.pathname}?${params.toString()}`;
    router.push(url);
  };

  const applyPreset = (nextPreset: RangePreset) => {
    const today = new Date();
    let start = new Date(today);
    let end = new Date(today);

    if (nextPreset === 'day') {
      start = new Date(today);
      end = new Date(today);
    } else if (nextPreset === 'week') {
      start = startOfWeek(today, { weekStartsOn: 1 });
      end = endOfWeek(today, { weekStartsOn: 1 });
    } else if (nextPreset === 'month') {
      start = startOfMonth(today);
      end = endOfMonth(today);
    }

    const startYmd = format(start, 'yyyy-MM-dd');
    const endYmd = format(end, 'yyyy-MM-dd');
    setPreset(nextPreset);
    setTmpDate(startYmd);
    setTmpWeek(getWeekValue(start));
    setTmpMonth(format(start, 'yyyy-MM'));
    setTmpStart(startYmd);
    setTmpEnd(endYmd);
    setPickerOpen(false);
    applyQuery(nextPreset, startYmd, endYmd);
  };

  const applyDate = (value: string) => {
    const parsed = parseISO(value);
    const startYmd = format(parsed, 'yyyy-MM-dd');
    setPreset('day');
    setTmpDate(startYmd);
    setTmpWeek(getWeekValue(parsed));
    setTmpMonth(format(parsed, 'yyyy-MM'));
    setTmpStart(startYmd);
    setTmpEnd(startYmd);
    setPickerOpen(false);
    applyQuery('day', startYmd, startYmd);
  };

  const applyWeek = (value: string) => {
    const range = getWeekRange(value);
    if (!range) return;
    const startYmd = format(range.start, 'yyyy-MM-dd');
    const endYmd = format(range.end, 'yyyy-MM-dd');
    setPreset('week');
    setTmpDate(startYmd);
    setTmpWeek(value);
    setTmpMonth(format(range.start, 'yyyy-MM'));
    setTmpStart(startYmd);
    setTmpEnd(endYmd);
    setPickerOpen(false);
    applyQuery('week', startYmd, endYmd);
  };

  const applyMonth = (value: string) => {
    const parsed = parseISO(`${value}-01`);
    const start = startOfMonth(parsed);
    const end = endOfMonth(parsed);
    const startYmd = format(start, 'yyyy-MM-dd');
    const endYmd = format(end, 'yyyy-MM-dd');
    setPreset('month');
    setTmpDate(startYmd);
    setTmpWeek(getWeekValue(start));
    setTmpMonth(value);
    setTmpStart(startYmd);
    setTmpEnd(endYmd);
    setPickerOpen(false);
    applyQuery('month', startYmd, endYmd);
  };

  const applyCustom = () => {
    const startYmd = tmpStart;
    const endYmd = tmpEnd;
    setPreset('custom');
    setPickerOpen(false);
    applyQuery('custom', startYmd, endYmd);
  };

  const rangeLabel = useMemo(() => {
    if (!tmpStart || !tmpEnd) return 'Pilih rentang';
    return formatRangeLabel(tmpStart, tmpEnd);
  }, [tmpEnd, tmpStart]);

  const presetButtonStyle = (active: boolean) => ({
    padding: '6px 10px',
    fontSize: 12,
    border: active ? '1px solid #0f766e' : '1px solid #d1d5db',
    background: active ? '#ccfbf1' : '#fff',
    color: active ? '#115e59' : '#374151',
  });

  return (
    <div style={{ position: 'relative' }}>
      <div style={{ display: 'flex', flexDirection: 'column', gap: 8, marginBottom: 8, alignItems: 'flex-end' }}>
        <div style={{ display: 'flex', gap: 12, justifyContent: 'flex-end', alignItems: 'center' }}>
          <button onClick={() => applyPreset('day')} style={presetButtonStyle(preset === 'day')}>
            Hari
          </button>
          <button onClick={() => applyPreset('week')} style={presetButtonStyle(preset === 'week')}>
            Minggu
          </button>
          <button onClick={() => applyPreset('month')} style={presetButtonStyle(preset === 'month')}>
            Bulan
          </button>
          <button aria-expanded={pickerOpen} onClick={() => setPickerOpen((v) => !v)} style={{ padding: '6px 10px', fontSize: 12, border: '1px solid #0f766e', background: '#ccfbf1', color: '#115e59' }}>
            {rangeLabel}
          </button>
        </div>

        <div style={{ display: 'flex', gap: 8, alignItems: 'center', borderRadius: 8, border: '1px solid #e5e7eb', background: '#fff', padding: '8px', boxShadow: '0 1px 2px rgba(0,0,0,0.04)' }}>
          <label htmlFor="dateSelect" style={{ fontSize: 13, fontWeight: 600, color: '#6b7280', marginRight: 6 }}>
            Tanggal
          </label>
          <input id="dateSelect" type="date" value={tmpDate} onChange={(e) => applyDate(e.target.value)} style={{ border: '1px solid #e5e7eb', borderRadius: 6, background: '#fff', padding: '6px 8px', fontSize: 13, color: '#374151' }} />

          <label htmlFor="weekSelect" style={{ fontSize: 13, fontWeight: 600, color: '#6b7280', marginLeft: 8 }}>
            Minggu
          </label>
          <input id="weekSelect" type="week" value={tmpWeek} onChange={(e) => applyWeek(e.target.value)} style={{ border: '1px solid #e5e7eb', borderRadius: 6, background: '#fff', padding: '6px 8px', fontSize: 13, color: '#374151' }} />

          <label htmlFor="monthSelect" style={{ fontSize: 13, fontWeight: 600, color: '#6b7280', marginLeft: 6 }}>
            Bulan
          </label>
          <input id="monthSelect" type="month" value={tmpMonth} onChange={(e) => applyMonth(e.target.value)} style={{ border: '1px solid #e5e7eb', borderRadius: 6, background: '#fff', padding: '6px 8px', fontSize: 13, color: '#374151' }} />
        </div>
      </div>

      {pickerOpen && (
        <div style={{ position: 'absolute', right: 0, top: 'calc(100% + 8px)', zIndex: 40, background: '#fff', border: '1px solid #e5e7eb', boxShadow: '0 6px 18px rgba(15,23,42,0.08)', padding: 12, borderRadius: 8, minWidth: 260 }}>
          <div style={{ display: 'flex', gap: 8, marginBottom: 8 }}>
            <div style={{ display: 'flex', flexDirection: 'column', gap: 6 }}>
              <label style={{ fontSize: 12, color: '#6b7280' }}>Dari</label>
              <input type="date" value={tmpStart} onChange={(e) => setTmpStart(e.target.value)} style={{ padding: '6px 8px', borderRadius: 6, border: '1px solid #d1d5db' }} />
            </div>
            <div style={{ display: 'flex', flexDirection: 'column', gap: 6 }}>
              <label style={{ fontSize: 12, color: '#6b7280' }}>Sampai</label>
              <input type="date" value={tmpEnd} onChange={(e) => setTmpEnd(e.target.value)} style={{ padding: '6px 8px', borderRadius: 6, border: '1px solid #d1d5db' }} />
            </div>
          </div>
          <div style={{ display: 'flex', justifyContent: 'flex-end', gap: 8 }}>
            <button onClick={() => setPickerOpen(false)} style={{ padding: '6px 10px', borderRadius: 6, border: '1px solid #d1d5db', background: '#fff' }}>
              Batal
            </button>
            <button onClick={applyCustom} style={{ padding: '6px 10px', borderRadius: 6, background: '#0f766e', color: '#fff' }}>
              Terapkan
            </button>
          </div>
        </div>
      )}
    </div>
  );
}
