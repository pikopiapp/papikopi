"use client";

import React from 'react';
import {
  Chart as ChartJS,
  CategoryScale,
  LinearScale,
  BarElement,
  PointElement,
  ArcElement,
  LineElement,
  Filler,
  Tooltip,
  Legend,
} from 'chart.js';
import type { ChartOptions } from 'chart.js';
import { Bar, Line } from 'react-chartjs-2';

ChartJS.register(CategoryScale, LinearScale, BarElement, PointElement, ArcElement, LineElement, Filler, Tooltip, Legend);

export type SummaryItem = { date: string; revenue: number; hpp: number; bonus: number; meal: number; orders: number; profit: number };

export function SalesBarChart({ summary, height = 240 }: { summary: SummaryItem[]; height?: number }) {
  const data = {
    labels: summary.map((s) => s.date),
    datasets: [
      { label: 'Revenue', data: summary.map((s) => s.revenue), backgroundColor: '#8884d8' },
      { label: 'HPP', data: summary.map((s) => s.hpp), backgroundColor: '#ef4444' },
      { label: 'Bonus', data: summary.map((s) => s.bonus), backgroundColor: '#7c3aed' },
      { label: 'Meal', data: summary.map((s) => s.meal), backgroundColor: '#f59e0b' },
    ],
  };

  const options: ChartOptions<'bar'> = {
    responsive: true,
    maintainAspectRatio: false,
    plugins: { legend: { position: 'top' }, tooltip: { enabled: true } },
    scales: {
      x: { stacked: false },
      y: {
        beginAtZero: true,
        ticks: {
          callback: (value: number | string) => {
            try { return new Intl.NumberFormat('id-ID', { style: 'currency', currency: 'IDR', maximumFractionDigits: 0 }).format(Number(value)); } catch { return String(value); }
          },
        },
      },
    },
  };

  return (
    <div className="bar-chart">
      <Bar data={data} options={options} height={height} />
    </div>
  );
}

export function OrdersLineChart({ summary, height = 240 }: { summary: SummaryItem[]; height?: number }) {
  const data = {
    labels: summary.map((s) => s.date),
    datasets: [{ label: 'Orders', data: summary.map((s) => s.orders), borderColor: '#2563eb', backgroundColor: 'rgba(37,99,235,0.1)', tension: 0.3, fill: true, pointRadius: 4 }],
  };

  const options: ChartOptions<'line'> = {
    responsive: true,
    maintainAspectRatio: false,
    plugins: { legend: { position: 'top' }, tooltip: { enabled: true } },
    scales: { y: { beginAtZero: true } },
  };

  return (
    <div className="orders-chart">
      <Line data={data} options={options} height={height} />
    </div>
  );
}

export function ProfitBarChart({ summary, height }: { summary: SummaryItem[]; height?: number }) {
  const labels = summary.map((s) => s.date);
  const margins = summary.map((s) => (s.revenue > 0 ? Math.round((s.profit / s.revenue) * 1000) / 10 : 0));

  const data = {
    labels,
    datasets: [
      {
        label: 'Margin (%)',
        data: margins,
        backgroundColor: '#10b981',
      },
    ],
  };

  const options: ChartOptions<'bar'> = {
    responsive: true,
    maintainAspectRatio: false,
    plugins: { legend: { position: 'top' }, tooltip: { enabled: true, callbacks: { label: (ctx) => `${ctx.parsed.y}%` } } },
    scales: {
      x: { stacked: false },
      y: { beginAtZero: true, max: 100, ticks: { callback: (v: number | string) => `${v}%` } },
    },
  };

  return (
    <div className="profit-bar-chart">
      {/* only pass height prop when explicitly provided so responsive CSS can size the chart */}
      <Bar data={data} options={options} {...(typeof height === 'number' ? { height } : {})} />
    </div>
  );
}
