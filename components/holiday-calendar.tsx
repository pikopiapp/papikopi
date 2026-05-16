'use client';

import React, { useState } from 'react';
import { ChevronLeft, ChevronRight, AlertCircle } from 'lucide-react';
import { isHoliday, getHolidayDescription, getHolidaysInMonth } from '@/lib/holiday-detector';

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

  // Get days in current month
  const daysInMonth = new Date(currentYear, currentMonth, 0).getDate();
  const firstDayOfMonth = new Date(currentYear, currentMonth - 1, 1).getDay();

  // Get holidays in current month
  const holidaysInMonth = getHolidaysInMonth(currentYear, currentMonth);

  // Create calendar grid
  const calendarDays: (number | null)[] = [];
  for (let i = 0; i < firstDayOfMonth; i++) {
    calendarDays.push(null);
  }
  for (let i = 1; i <= daysInMonth; i++) {
    calendarDays.push(i);
  }

  const handlePrevMonth = () => {
    if (currentMonth === 1) {
      setCurrentYear(currentYear - 1);
      setCurrentMonth(12);
    } else {
      setCurrentMonth(currentMonth - 1);
    }
  };

  const handleNextMonth = () => {
    if (currentMonth === 12) {
      setCurrentYear(currentYear + 1);
      setCurrentMonth(1);
    } else {
      setCurrentMonth(currentMonth + 1);
    }
  };

  const handleDateClick = (day: number) => {
    const date = new Date(currentYear, currentMonth - 1, day);
    onDateSelect?.(date);

    if (isHoliday(date)) {
      onHolidaySelect?.(date);
    }
  };

  const monthNames = [
    'Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni',
    'Juli', 'Agustus', 'September', 'Oktober', 'November', 'Desember'
  ];

  const dayNames = ['Min', 'Sen', 'Sel', 'Rab', 'Kam', 'Jum', 'Sab'];

  return (
    <div className="bg-white rounded-lg shadow-lg p-6">
      {/* Header */}
      <div className="flex items-center justify-between mb-6">
        <button
          onClick={handlePrevMonth}
          className="p-2 hover:bg-gray-100 rounded-lg transition"
          title="Bulan sebelumnya"
        >
          <ChevronLeft className="w-5 h-5" />
        </button>

        <h2 className="text-xl font-bold text-gray-800">
          {monthNames[currentMonth - 1]} {currentYear}
        </h2>

        <button
          onClick={handleNextMonth}
          className="p-2 hover:bg-gray-100 rounded-lg transition"
          title="Bulan berikutnya"
        >
          <ChevronRight className="w-5 h-5" />
        </button>
      </div>

      {/* Day names */}
      <div className="grid grid-cols-7 gap-1 mb-2">
        {dayNames.map((day) => (
          <div key={day} className="text-center text-sm font-semibold text-gray-600 py-2">
            {day}
          </div>
        ))}
      </div>

      {/* Calendar grid */}
      <div className="grid grid-cols-7 gap-1 mb-6">
        {calendarDays.map((day, index) => {
          if (day === null) {
            return <div key={`empty-${index}`} className="aspect-square" />;
          }

          const date = new Date(currentYear, currentMonth - 1, day);
          const isHolidayDate = isHoliday(date);
          const dayOfWeek = date.getDay();
          const isWeekend = dayOfWeek === 0 || dayOfWeek === 6;

          return (
            <button
              key={day}
              onClick={() => handleDateClick(day)}
              className={`
                aspect-square p-1 rounded-lg font-semibold text-sm transition
                ${isHolidayDate
                  ? 'bg-red-100 text-red-700 border-2 border-red-500 hover:bg-red-200'
                  : isWeekend
                  ? 'bg-orange-100 text-orange-700 hover:bg-orange-200'
                  : 'bg-gray-50 text-gray-700 hover:bg-blue-100'
                }
              `}
              title={isHolidayDate ? `Libur: ${getHolidayDescription(date)}` : ''}
            >
              {day}
            </button>
          );
        })}
      </div>

      {/* Legend */}
      <div className="border-t pt-4 space-y-3">
        <h3 className="font-semibold text-gray-700">Keterangan:</h3>
        <div className="space-y-2">
          <div className="flex items-center gap-3">
            <div className="w-6 h-6 bg-red-100 border-2 border-red-500 rounded text-xs flex items-center justify-center">
              H
            </div>
            <span className="text-sm text-gray-700">Hari Libur Nasional</span>
          </div>
          <div className="flex items-center gap-3">
            <div className="w-6 h-6 bg-orange-100 rounded text-xs flex items-center justify-center">
              S
            </div>
            <span className="text-sm text-gray-700">Hari Weekend (Sabtu/Minggu)</span>
          </div>
          <div className="flex items-center gap-3">
            <div className="w-6 h-6 bg-gray-50 rounded text-xs flex items-center justify-center">
              K
            </div>
            <span className="text-sm text-gray-700">Hari Kerja Biasa</span>
          </div>
        </div>
      </div>

      {/* Holidays in month */}
      {holidaysInMonth.length > 0 && (
        <div className="border-t mt-4 pt-4">
          <h3 className="font-semibold text-gray-700 mb-3">🎉 Hari Libur di Bulan Ini:</h3>
          <div className="space-y-2">
            {holidaysInMonth.map((day) => {
              const date = new Date(currentYear, currentMonth - 1, day);
              return (
                <div
                  key={day}
                  className="flex items-center justify-between p-2 bg-red-50 border border-red-200 rounded"
                >
                  <span className="text-sm font-medium text-gray-700">
                    {day} {monthNames[currentMonth - 1]} {currentYear}
                  </span>
                  <span className="text-sm font-semibold text-red-700">
                    {getHolidayDescription(date)}
                  </span>
                </div>
              );
            })}
          </div>
        </div>
      )}

      {/* Bonus Info */}
      <div className="border-t mt-4 pt-4 bg-green-50 rounded-lg p-4">
        <div className="flex items-start gap-2">
          <AlertCircle className="w-5 h-5 text-green-700 mt-0.5 flex-shrink-0" />
          <div className="text-sm text-green-800">
            <p className="font-semibold mb-1">💰 Info Bonus Hari Libur</p>
            <p>
              Pada hari libur (weekend & hari libur nasional), bonus dihitung dengan rate{' '}
              <span className="font-bold">20% untuk SEMUA tier</span>, bukan struktur bertingkat biasa.
              Artinya, bonus pada hari libur lebih tinggi dibanding hari kerja biasa!
            </p>
          </div>
        </div>
      </div>
    </div>
  );
}
