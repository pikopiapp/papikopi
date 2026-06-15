"use client";

import React, { useState, useEffect } from "react";
import { ChevronLeft, ChevronRight, AlertCircle } from "lucide-react";

interface HolidayCalendarProps {
  year?: number;
  month?: number;
  onDateSelect?: (date: Date) => void;
  onHolidaySelect?: (date: Date) => void;
}

export default function HolidayCalendar({
  year: initialYear,
  month: initialMonth,
  onDateSelect,
  onHolidaySelect,
}: HolidayCalendarProps) {
  const today = new Date();
  const [currentYear, setCurrentYear] = useState(initialYear || today.getFullYear());
  const [currentMonth, setCurrentMonth] = useState(initialMonth || today.getMonth() + 1);
  const [editing, setEditing] = useState(false);

  const LOCAL_KEY = "customHolidays";
  const [customHolidays, setCustomHolidays] = useState<Map<string, string>>(new Map());
  const [nationalHolidays, setNationalHolidays] = useState<Map<string, string>>(new Map());
  const [editingItem, setEditingItem] = useState<string | null>(null);

  function toIsoLocal(date: Date) {
    const y = date.getFullYear();
    const m = String(date.getMonth() + 1).padStart(2, '0');
    const d = String(date.getDate()).padStart(2, '0');
    return `${y}-${m}-${d}`;
  }

  useEffect(() => {
    let mounted = true;
    async function load() {
      try {
        const res = await fetch("/api/holidays");
        if (!res.ok) throw new Error("fetch failed");
        const json = await res.json();
        if (!mounted) return;
        if (json && json.success && Array.isArray(json.data)) {
          const custom = new Map<string, string>();
          const national = new Map<string, string>();
          for (const r of json.data as Array<{ date: string; description?: string; is_national?: boolean }>) {
            if (!r || !r.date) continue;
            const iso = r.date;
            const desc = r.description ?? '';
            if (r.is_national) national.set(iso, desc);
            else custom.set(iso, desc);
          }

          // merge local fallback (localStorage)
          try {
            const raw = localStorage.getItem(LOCAL_KEY);
            if (raw) {
              const arr = JSON.parse(raw);
              if (Array.isArray(arr)) {
                for (const a of arr) {
                  if (a && a.date) custom.set(a.date, a.description ?? '');
                }
              }
            }
          } catch {}

          setCustomHolidays(custom);
          setNationalHolidays(national);
        }
      } catch (e) {
        // ignore load errors
      }
    }

    load();
    return () => { mounted = false; };
  }, []);

  // month navigation helpers
  const handlePrevMonth = () => {
    if (currentMonth === 1) {
      setCurrentYear(currentYear - 1);
      setCurrentMonth(12);
    } else setCurrentMonth(currentMonth - 1);
  };
  const handleNextMonth = () => {
    if (currentMonth === 12) {
      setCurrentYear(currentYear + 1);
      setCurrentMonth(1);
    } else setCurrentMonth(currentMonth + 1);
  };

  const daysInMonth = new Date(currentYear, currentMonth, 0).getDate();
  const firstDayOfMonth = new Date(currentYear, currentMonth - 1, 1).getDay();
  const holidaysInMonth = Array.from(nationalHolidays.keys()).map(d => new Date(d + 'T00:00:00')).filter(dt => dt.getFullYear() === currentYear && dt.getMonth() === currentMonth - 1).map(dt => dt.getDate());
  const customDaysInMonth = Array.from(customHolidays.keys()).map(d => new Date(d + 'T00:00:00')).filter(dt => dt.getFullYear() === currentYear && dt.getMonth() === currentMonth - 1).map(dt => dt.getDate());
  const mergedHolidaysInMonth = Array.from(new Set([...holidaysInMonth, ...customDaysInMonth])).sort((a, b) => a - b);

  const calendarDays: (number | null)[] = [];
  for (let i = 0; i < firstDayOfMonth; i++) calendarDays.push(null);
  for (let i = 1; i <= daysInMonth; i++) calendarDays.push(i);

  const handleDateClick = async (day: number) => {
    const date = new Date(currentYear, currentMonth - 1, day);
    onDateSelect?.(date);
    const iso = toIsoLocal(date);
    const isNationalNow = nationalHolidays.has(iso);
    const isCustomNow = customHolidays.has(iso);
    const isWeekendNow = date.getDay() === 0 || date.getDay() === 6;
    if (!editing) {
      if (isNationalNow || isCustomNow || isWeekendNow) onHolidaySelect?.(date);
      return;
    }

    // reuse iso, isNationalNow and isCustomNow from above

    const next = new Map(customHolidays);
    const isRemoving = next.has(iso);
    try {
      if (isRemoving) {
        const res = await fetch(`/api/holidays/${iso}`, { method: 'DELETE' });
        if (!res.ok) throw new Error('delete failed');
        next.delete(iso);
      } else {
        const desc = window.prompt('Label hari libur (opsional):') ?? '';
        const res = await fetch('/api/holidays', { method: 'POST', headers: { 'Content-Type': 'application/json' }, body: JSON.stringify({ date: iso, description: desc }) });
        if (!res.ok) throw new Error('create failed');
        next.set(iso, desc);
      }
      setCustomHolidays(next);
      try { localStorage.setItem(LOCAL_KEY, JSON.stringify(Array.from(next.entries()).map(([d, desc]) => ({ date: d, description: desc })))); } catch {}
      onHolidaySelect?.(date);
      return;
    } catch {
      const nextLocal = new Map(customHolidays);
      if (nextLocal.has(iso)) nextLocal.delete(iso);
      else nextLocal.set(iso, '');
      setCustomHolidays(nextLocal);
      try { localStorage.setItem(LOCAL_KEY, JSON.stringify(Array.from(nextLocal.entries()).map(([d, desc]) => ({ date: d, description: desc })))); } catch {}
      onHolidaySelect?.(date);
      return;
    }
  };

  const monthNames = ['Januari','Februari','Maret','April','Mei','Juni','Juli','Agustus','September','Oktober','November','Desember'];
  const dayNames = ['Min','Sen','Sel','Rab','Kam','Jum','Sab'];

  const weekdayNamesFull = ['Minggu', 'Senin', 'Selasa', 'Rabu', 'Kamis', 'Jumat', 'Sabtu'];

  function holidayLabel(date: Date): string {
    const iso = toIsoLocal(date);
    if (customHolidays.has(iso)) return customHolidays.get(iso) || '';
    if (nationalHolidays.has(iso)) return nationalHolidays.get(iso) || '';
    return weekdayNamesFull[date.getDay()];
  }

  return (
    <div className="bg-white rounded-lg shadow-lg p-6">
      <div className="flex items-center justify-between mb-6">
        <button onClick={handlePrevMonth} className="p-2 hover:bg-gray-100 rounded-lg transition" title="Bulan sebelumnya"><ChevronLeft className="w-5 h-5" /></button>
        <h2 className="text-xl font-bold text-gray-800">{monthNames[currentMonth - 1]} {currentYear}</h2>
        <button onClick={handleNextMonth} className="p-2 hover:bg-gray-100 rounded-lg transition" title="Bulan berikutnya"><ChevronRight className="w-5 h-5" /></button>
      </div>

      <div className="grid grid-cols-7 gap-1 mb-2">
        {dayNames.map((d) => <div key={d} className="text-center text-sm font-semibold text-gray-600 py-2">{d}</div>)}
      </div>

      <div className="grid grid-cols-7 gap-1 mb-6">
        {calendarDays.map((day, idx) => {
          if (day === null) return <div key={`e-${idx}`} className="aspect-square" />;
          const date = new Date(currentYear, currentMonth - 1, day);
          const iso = toIsoLocal(date);
          const isNationalNow = nationalHolidays.has(iso);
          const isCustomNow = customHolidays.has(iso);
          const isWeekend = date.getDay() === 0 || date.getDay() === 6;
          const isHolidayDate = isNationalNow || isCustomNow || isWeekend;
          const title = isHolidayDate ? (`Libur: ${isCustomNow ? customHolidays.get(iso) : (isNationalNow ? nationalHolidays.get(iso) : '')}`) : '';
          return (
            <button key={day} onClick={() => handleDateClick(day)} className={`aspect-square p-1 rounded-lg font-semibold text-sm transition ${isHolidayDate ? 'bg-red-100 text-red-700 border-2 border-red-500 hover:bg-red-200' : isWeekend ? 'bg-orange-100 text-orange-700 hover:bg-orange-200' : 'bg-gray-50 text-gray-700 hover:bg-blue-100'}`} title={title}>{day}</button>
          );
        })}
      </div>

      <div className="border-t pt-4 space-y-3">
        <h3 className="font-semibold text-gray-700">Keterangan:</h3>
        <div className="space-y-2">
          <div className="flex items-center gap-3"><div className="w-6 h-6 bg-red-100 border-2 border-red-500 rounded text-xs flex items-center justify-center">H</div><span className="text-sm text-gray-700">Hari Libur Nasional</span></div>
          <div className="flex items-center gap-3"><div className="w-6 h-6 bg-orange-100 rounded text-xs flex items-center justify-center">S</div><span className="text-sm text-gray-700">Hari Weekend (Sabtu/Minggu)</span></div>
          <div className="flex items-center gap-3"><div className="w-6 h-6 bg-gray-50 rounded text-xs flex items-center justify-center">K</div><span className="text-sm text-gray-700">Hari Kerja Biasa</span></div>
        </div>
      </div>

      {mergedHolidaysInMonth.length > 0 && (
        <div className="border-t mt-4 pt-4">
          <div className="flex items-center justify-between">
            <h3 className="font-semibold text-gray-700 mb-3">🎉 Hari Libur di Bulan Ini:</h3>
            <div className="flex items-center gap-2">
              <label className="text-sm text-gray-600">Edit Hari Libur</label>
              <button onClick={() => setEditing(!editing)} className={`px-3 py-1 rounded ${editing ? 'bg-red-600 text-white' : 'bg-gray-200 text-gray-700'}`}>{editing ? 'Selesai' : 'Edit'}</button>
            </div>
          </div>

          <div className="space-y-2">
            {mergedHolidaysInMonth.map((day) => {
              const date = new Date(currentYear, currentMonth - 1, day);
              const iso = toIsoLocal(date);
              const isCustom = customHolidays.has(iso);
              const isNational = nationalHolidays.has(iso);
              return (
                <div key={iso} className="flex items-center justify-between p-2 bg-red-50 border border-red-200 rounded">
                  <div className="flex items-center gap-3">
                    <span className="text-sm font-medium text-gray-700">{day} {['Januari','Februari','Maret','April','Mei','Juni','Juli','Agustus','September','Oktober','November','Desember'][currentMonth-1]} {currentYear}</span>
                    <span className="text-sm font-semibold text-red-700">{holidayLabel(date)}</span>
                  </div>
                  <div className="flex items-center gap-2">
                    {editing ? (
                      editingItem === iso ? (
                        <div className="flex items-center gap-2">
                          <input defaultValue={iso} type="date" className="border px-2 py-1 rounded text-sm" id={`edit-date-${iso}`} />
                          <input defaultValue={customHolidays.get(iso) ?? ''} placeholder="Label" className="border px-2 py-1 rounded text-sm" id={`edit-desc-${iso}`} />
                          <button onClick={async () => {
                            const newDate = (document.getElementById(`edit-date-${iso}`) as HTMLInputElement).value;
                            const newDesc = (document.getElementById(`edit-desc-${iso}`) as HTMLInputElement).value;
                            if (!newDate) return;
                            const next = new Map(customHolidays);
                            try {
                              const resCreate = await fetch('/api/holidays', { method: 'POST', headers: { 'Content-Type': 'application/json' }, body: JSON.stringify({ date: newDate, description: newDesc }) });
                              if (!resCreate.ok) throw new Error('create failed');
                              next.set(newDate, newDesc);
                              if (newDate !== iso) {
                                const resDel = await fetch(`/api/holidays/${iso}`, { method: 'DELETE' });
                                if (!resDel.ok) throw new Error('delete failed');
                                next.delete(iso);
                              }
                              setCustomHolidays(next);
                              try { localStorage.setItem(LOCAL_KEY, JSON.stringify(Array.from(next.entries()).map(([d,desc])=>({date:d,description:desc})))); } catch {}
                              setEditingItem(null);
                            } catch {
                              next.set(newDate, newDesc);
                              if (newDate !== iso) next.delete(iso);
                              setCustomHolidays(next);
                              try { localStorage.setItem(LOCAL_KEY, JSON.stringify(Array.from(next.entries()).map(([d,desc])=>({date:d,description:desc})))); } catch {}
                              setEditingItem(null);
                            }
                          }} className="px-2 py-1 rounded bg-blue-600 text-white text-sm">Simpan</button>
                          <button onClick={() => setEditingItem(null)} className="px-2 py-1 rounded bg-gray-200 text-sm">Batal</button>
                        </div>
                      ) : (
                        <div className="flex items-center gap-2">
                          <button onClick={() => setEditingItem(iso)} className="px-2 py-1 text-sm rounded bg-yellow-400 text-white">Ubah</button>
                          <button onClick={async () => {
                            const isoStr = iso;
                            const next = new Map(customHolidays);
                            try {
                              const res = await fetch(`/api/holidays/${isoStr}`, { method: 'DELETE' });
                              if (!res.ok) throw new Error('delete failed');
                              next.delete(isoStr);
                              setCustomHolidays(next);
                              try { localStorage.setItem(LOCAL_KEY, JSON.stringify(Array.from(next.entries()).map(([d,desc])=>({date:d,description:desc})))); } catch {}
                              onHolidaySelect?.(date);
                            } catch {
                              next.delete(isoStr);
                              setCustomHolidays(next);
                              try { localStorage.setItem(LOCAL_KEY, JSON.stringify(Array.from(next.entries()).map(([d,desc])=>({date:d,description:desc})))); } catch {}
                              onHolidaySelect?.(date);
                            }
                          }} className="px-2 py-1 text-sm rounded bg-white text-red-700 border border-red-300">Hapus</button>
                        </div>
                      )
                    ) : (
                      <span className="text-sm text-gray-600">&nbsp;</span>
                    )}
                  </div>
                </div>
              );
            })}
          </div>
        </div>
      )}

      <div className="border-t mt-4 pt-4 bg-green-50 rounded-lg p-4">
        <div className="flex items-start gap-2">
          <AlertCircle className="w-5 h-5 text-green-700 mt-0.5 shrink-0" />
          <div className="text-sm text-green-800">
            <p className="font-semibold mb-1">💰 Info Bonus Hari Libur</p>
            <p>Pada hari libur (weekend & hari libur nasional), bonus dihitung dengan rate <span className="font-bold">20% untuk SEMUA tier</span>, bukan struktur bertingkat biasa. Artinya, bonus pada hari libur lebih tinggi dibanding hari kerja biasa!</p>
          </div>
        </div>
      </div>
    </div>
  );
}
