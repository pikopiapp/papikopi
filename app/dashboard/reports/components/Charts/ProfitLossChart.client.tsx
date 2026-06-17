"use client";
import React, { useMemo } from 'react';

interface Props {
  data: Array<Record<string, any>>;
  formatCurrency?: (v: number) => string;
}

function areaPath(points: Array<[number, number]>, baseY: number) {
  if (!points.length) return '';
  const top = points.map((p, i) => `${i === 0 ? 'M' : 'L'} ${p[0]} ${p[1]}`).join(' ');
  const bot = points
    .slice()
    .reverse()
    .map((p, i) => `L ${p[0]} ${baseY}`)
    .join(' ');
  return `${top} ${bot} Z`;
}

export default function ProfitLossChartClient({ data, formatCurrency }: Props) {
  const w = 800;
  const h = 400;

  const { months, revenuePts, costPts, profitPts, yMax } = useMemo(() => {
    const months = data.map((d) => String(d.month ?? ''));
    const revenue = data.map((d) => Number(d.revenue ?? 0));
    const cost = data.map((d) => Number(d.cost ?? 0));
    const profit = data.map((d) => Number(d.profit ?? 0));
    const yMax = Math.max(1, ...revenue, ...cost, ...profit);
    const stepX = w / Math.max(1, data.length - 1 || 1);
    const pad = 40;
    const scaleY = (v: number) => h - pad - (v / yMax) * (h - pad * 2);
    const revenuePts = revenue.map((s, i) => [i * stepX, scaleY(s)] as [number, number]);
    const costPts = cost.map((s, i) => [i * stepX, scaleY(s)] as [number, number]);
    const profitPts = profit.map((s, i) => [i * stepX, scaleY(s)] as [number, number]);
    return { months, revenuePts, costPts, profitPts, yMax };
  }, [data]);

  return (
    <div style={{ width: '100%', height: h }}>
      <svg viewBox={`0 0 ${w} ${h}`} width="100%" height="100%" preserveAspectRatio="xMidYMid meet">
        <rect x={0} y={0} width={w} height={h} fill="transparent" />
        {/* axes */}
        <line x1={0} y1={h - 40} x2={w} y2={h - 40} stroke="#eee" />

        {/* months labels */}
        {months.map((m, i) => (
          <text key={m + i} x={(i * w) / Math.max(1, months.length - 1)} y={h - 16} fontSize={11} textAnchor="middle">
            {m}
          </text>
        ))}

        {/* stacked areas (simple draw, not true stack) */}
        <path d={areaPath(revenuePts, h - 40)} fill="#8884d8" opacity={0.85} />
        <path d={areaPath(costPts, h - 40)} fill="#ffc658" opacity={0.85} />
        <path d={areaPath(profitPts, h - 40)} fill="#82ca9d" opacity={0.85} />

        {/* legend */}
        <g transform={`translate(${w - 180}, 8)`}>
          <rect x={0} y={0} width={170} height={48} rx={4} fill="rgba(255,255,255,0.9)" stroke="#eee" />
          <g transform="translate(8,8)">
            <rect x={0} y={0} width={12} height={8} fill="#8884d8" />
            <text x={18} y={8} fontSize={12}>Pendapatan</text>
          </g>
          <g transform="translate(8,24)">
            <rect x={0} y={0} width={12} height={8} fill="#ffc658" />
            <text x={18} y={8} fontSize={12}>Biaya (HPP)</text>
          </g>
        </g>
      </svg>
    </div>
  );
}
