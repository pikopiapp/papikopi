'use client';

import { useState } from 'react';
import { ChevronLeft, ChevronRight, Calendar } from 'lucide-react';
import { Button } from '@/components/ui/button';
import { Card, CardContent, CardHeader } from '@/components/ui/card';

interface DatePickerProps {
  onDateChange?: (date: Date) => void;
  selectedDate?: Date;
}

export function DatePicker({ onDateChange, selectedDate }: DatePickerProps) {
  const [currentMonth, setCurrentMonth] = useState(selectedDate || new Date());
  const [selected, setSelected] = useState(selectedDate || new Date());
  const [isOpen, setIsOpen] = useState(false);

  const daysInMonth = (date: Date) => {
    return new Date(date.getFullYear(), date.getMonth() + 1, 0).getDate();
  };

  const firstDayOfMonth = (date: Date) => {
    return new Date(date.getFullYear(), date.getMonth(), 1).getDay();
  };

  const handlePrevMonth = () => {
    setCurrentMonth(new Date(currentMonth.getFullYear(), currentMonth.getMonth() - 1));
  };

  const handleNextMonth = () => {
    setCurrentMonth(new Date(currentMonth.getFullYear(), currentMonth.getMonth() + 1));
  };

  const handleDateClick = (day: number) => {
    const newDate = new Date(currentMonth.getFullYear(), currentMonth.getMonth(), day);
    setSelected(newDate);
    onDateChange?.(newDate);
  };

  const days = [];
  const totalDays = daysInMonth(currentMonth);
  const startingDayOfWeek = firstDayOfMonth(currentMonth);

  // Empty cells before first day
  for (let i = 0; i < startingDayOfWeek; i++) {
    days.push(null);
  }

  // Days of month
  for (let i = 1; i <= totalDays; i++) {
    days.push(i);
  }

  const monthName = currentMonth.toLocaleDateString('id-ID', { month: 'long', year: 'numeric' });
  const dayNames = ['Min', 'Sen', 'Sel', 'Rab', 'Kam', 'Jum', 'Sab'];

  return (
    <div className="relative w-fit">
      {/* Trigger Button */}
      <button
        onClick={() => setIsOpen(!isOpen)}
        className="flex items-center gap-2 px-4 py-2 bg-blue-600 hover:bg-blue-700 text-white font-medium rounded-lg transition-colors"
      >
        <Calendar className="h-4 w-4" />
        {selected.toLocaleDateString('id-ID', {
          weekday: 'short',
          day: 'numeric',
          month: 'short',
          year: 'numeric',
        })}
      </button>

      {/* Dropdown Popup */}
      {isOpen && (
        <Card className="absolute top-full left-0 mt-2 w-80 z-50 shadow-lg">
            <CardHeader className="flex flex-row items-center justify-between space-y-0 pb-3">
              <h3 className="text-lg font-semibold">Pilih Tanggal</h3>
              <button
                onClick={() => setIsOpen(false)}
                className="text-gray-500 hover:text-gray-700 text-xl leading-none"
              >
                ✕
              </button>
            </CardHeader>

            <CardContent className="space-y-4">
              {/* Month/Year Header */}
              <div className="flex items-center justify-between">
                <Button
                  variant="outline"
                  size="sm"
                  onClick={handlePrevMonth}
                  className="h-8 w-8 p-0"
                >
                  <ChevronLeft className="h-4 w-4" />
                </Button>
                <h3 className="font-semibold text-sm">{monthName}</h3>
                <Button
                  variant="outline"
                  size="sm"
                  onClick={handleNextMonth}
                  className="h-8 w-8 p-0"
                >
                  <ChevronRight className="h-4 w-4" />
                </Button>
              </div>

              {/* Day Names */}
              <div className="grid grid-cols-7 gap-2">
                {dayNames.map((day) => (
                  <div key={day} className="text-center text-xs font-semibold text-gray-500">
                    {day}
                  </div>
                ))}
              </div>

              {/* Calendar Days */}
              <div className="grid grid-cols-7 gap-2">
                {days.map((day, index) => (
                  <button
                    key={index}
                    onClick={() => {
                      if (day) {
                        handleDateClick(day);
                        setIsOpen(false);
                      }
                    }}
                    disabled={!day}
                    className={`
                      h-8 text-sm rounded font-medium transition-colors
                      ${!day ? 'invisible' : ''}
                      ${
                        day &&
                        selected.getFullYear() === currentMonth.getFullYear() &&
                        selected.getMonth() === currentMonth.getMonth() &&
                        selected.getDate() === day
                          ? 'bg-blue-500 text-white hover:bg-blue-600'
                          : 'hover:bg-gray-100 text-gray-700'
                      }
                    `}
                  >
                    {day}
                  </button>
                ))}
              </div>

              {/* Quick Select Buttons */}
              <div className="grid grid-cols-2 gap-2 pt-2">
                <Button
                  variant="outline"
                  size="sm"
                  onClick={() => {
                    const today = new Date();
                    setSelected(today);
                    onDateChange?.(today);
                    setIsOpen(false);
                  }}
                  className="text-xs"
                >
                  Hari Ini
                </Button>
                <Button
                  variant="outline"
                  size="sm"
                  onClick={() => {
                    const yesterday = new Date(Date.now() - 24 * 60 * 60 * 1000);
                    setSelected(yesterday);
                    onDateChange?.(yesterday);
                    setIsOpen(false);
                  }}
                  className="text-xs"
                >
                  Kemarin
                </Button>
              </div>
            </CardContent>
          </Card>
      )}
    </div>
  );
}
