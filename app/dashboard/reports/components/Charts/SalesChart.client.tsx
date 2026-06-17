"use client";
import React, { useMemo } from 'react';

interface Props {
  data: Array<Record<string, any>>;
  formatCurrency?: (v: number) => string;
}

function linePath(points: Array<[number, number]>) {
  if (!points.length) return '';
  return points.map((p, i) => `${i === 0 ? 'M' : 'L'} ${p[0]} ${p[1]}`).join(' ');
}

export default function SalesChartClient({ data, formatCurrency }: Props) {
  const w = 800;
  const h = 400;

  const { months, salesPoints, profitPoints, yMax } = useMemo(() => {
    const months = data.map((d) => String(d.month ?? ''));
    const sales = data.map((d) => Number(d.sales ?? 0));
    const profit = data.map((d) => Number(d.profit ?? 0));
    const yMax = Math.max(1, ...sales, ...profit);
    const stepX = w / Math.max(1, data.length - 1 || 1);
    const pad = 40;
    const scaleY = (v: number) => h - pad - (v / yMax) * (h - pad * 2);
    const salesPoints: Array<[number, number]> = sales.map((s, i) => [i * stepX, scaleY(s)]);
    const profitPoints: Array<[number, number]> = profit.map((s, i) => [i * stepX, scaleY(s)]);
    return { months, salesPoints, profitPoints, yMax };
  }, [data]);

  return (
    <div style={{ width: '100%', height: h }}>
      <svg viewBox={`0 0 ${w} ${h}`} width="100%" height="100%" preserveAspectRatio="xMidYMid meet">
        <rect x={0} y={0} width={w} height={h} fill="transparent" />
        {/* axes */}
        <line x1={0} y1={h - 40} x2={w} y2={h - 40} stroke="#ddd" />
        {/* ticks + labels */}
        {months.map((m, i) => (
          <g key={m + i} transform={`translate(${(i * w) / Math.max(1, months.length - 1)}, ${h - 40})`}>
            <line x1={0} y1={0} x2={0} y2={6} stroke="#bbb" />
            <text x={0} y={20} fontSize={11} textAnchor="middle" fill="#333">{m}</text>
          </g>
        ))}

        {/* lines */}
        <path d={linePath(salesPoints)} fill="none" stroke="#8884d8" strokeWidth={2} />
        <path d={linePath(profitPoints)} fill="none" stroke="#82ca9d" strokeWidth={2} />

        {/* dots */}
        {salesPoints.map((p, i) => (
          <circle key={`s-${i}`} cx={p[0]} cy={p[1]} r={3} fill="#8884d8" />
        ))}
        {profitPoints.map((p, i) => (
          <circle key={`p-${i}`} cx={p[0]} cy={p[1]} r={3} fill="#82ca9d" />
        ))}

        {/* legend */}
        <g transform={`translate(${w - 160}, 12)`}>
          <rect x={0} y={0} width={150} height={36} rx={4} fill="rgba(255,255,255,0.9)" stroke="#eee" />
          <g transform="translate(8,8)">
            <rect x={0} y={0} width={12} height={6} fill="#8884d8" />
            <text x={18} y={6} fontSize={12} fill="#333">Sales</text>
          </g>
          <g transform="translate(8,20)">
            <rect x={0} y={0} width={12} height={6} fill="#82ca9d" />
            <text x={18} y={6} fontSize={12} fill="#333">Profit</text>
          </g>
        </g>
      </svg>
    </div>
  );
}
