'use client';

import { Calendar, Calculator, Sparkles } from 'lucide-react';
import BonusCalculator from '@/components/bonus-calculator-widget';
import HolidayCalendar from '@/components/holiday-calendar';

export default function BonusCalculatorPage() {
  return (
    <div className="min-h-screen surface py-8">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div className="mb-8 rounded-3xl border border-slate-200 surface-card p-8 shadow-sm">
          <div className="flex flex-col gap-4 md:flex-row md:items-center md:justify-between">
            <div>
              <p className="text-sm uppercase tracking-[0.24em] text-amber-700">Dashboard Bonus</p>
              <h1 className="mt-2 text-3xl font-bold tracking-tight text-slate-900">
                Kalkulator Bonus & Kalender Hari Libur
              </h1>
              <p className="mt-3 max-w-2xl text-sm leading-6 text-slate-600">
                Hitung bonus penjualan dengan otomatis mendeteksi hari libur nasional dan weekend. Pada hari libur,
                semua tier bonus otomatis menggunakan 20%.
              </p>
            </div>
            <div className="flex items-center gap-3 text-slate-700">
              <Calculator className="h-8 w-8 text-amber-600" />
              <Calendar className="h-8 w-8 text-sky-600" />
              <Sparkles className="h-8 w-8 text-emerald-600" />
            </div>
          </div>
        </div>

        <div className="grid gap-8 xl:grid-cols-[1.15fr_0.85fr]">
          <section className="space-y-6">
            <div className="rounded-3xl border border-slate-200 surface-card p-6 shadow-sm">
              <h2 className="text-xl font-semibold text-slate-900">Kalkulator Bonus</h2>
              <p className="mt-2 text-sm text-slate-600">
                Masukkan omset dan pilih tanggal untuk menghitung bonus. Hari libur otomatis akan menggunakan semua tier 20%.
              </p>
            </div>
            <div className="rounded-3xl border border-slate-200 surface-card p-6 shadow-sm">
              <BonusCalculator showBreakdown />
            </div>
          </section>

          <aside className="space-y-6">
            <div className="rounded-3xl border border-slate-200 surface-card p-6 shadow-sm">
              <h2 className="text-xl font-semibold text-slate-900">Kalender Hari Libur</h2>
              <p className="mt-2 text-sm text-slate-600">
                Lihat tanggal libur nasional dan weekend di bulan ini. Klik tanggal untuk memilih dan melihat detail.
              </p>
            </div>
            <div className="rounded-3xl border border-slate-200 surface-card p-6 shadow-sm">
              <HolidayCalendar />
            </div>
          </aside>
        </div>
      </div>
    </div>
  );
}
