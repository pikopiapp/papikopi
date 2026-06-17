"use client";
import React, { useMemo } from 'react';

interface Props {
  data: Array<Record<string, any>>; // [{ category, outletA: val, outletB: val }]
  outlets: Array<string>;
  colors?: string[];
}

export default function OutletRadarChartClient({ data, outlets, colors = ['#8884d8', '#82ca9d', '#ffc658'] }: Props) {
  const size = 420;
  const cx = size / 2;
  const cy = size / 2;
  const r = 140;

  const categories = data.map((d) => String(d.category ?? ''));
  const maxVal = Math.max(1, ...data.flatMap((d) => outlets.map((o) => Number(d[o] ?? 0))));

  const pointsForOutlet = (outlet: string) => {
    return data.map((d, i) => {
      const angle = (Math.PI * 2 * i) / categories.length - Math.PI / 2;
      const val = Number(d[outlet] ?? 0);
      const rr = (val / maxVal) * r;
      return [cx + Math.cos(angle) * rr, cy + Math.sin(angle) * rr] as [number, number];
    });
  };

  return (
    <div style={{ width: '100%', height: size }}>
      <svg viewBox={`0 0 ${size} ${size}`} width="100%" height={size} preserveAspectRatio="xMidYMid meet">
        {/* grid */}
        {[0.25, 0.5, 0.75, 1].map((t, idx) => (
          <circle key={idx} cx={cx} cy={cy} r={r * t} fill="none" stroke="#eee" />
        ))}

        {/* spokes */}
        {categories.map((cat, i) => {
          const angle = (Math.PI * 2 * i) / categories.length - Math.PI / 2;
          const x = cx + Math.cos(angle) * r;
          const y = cy + Math.sin(angle) * r;
          return <line key={cat + i} x1={cx} y1={cy} x2={x} y2={y} stroke="#f5f5f5" />;
        })}

        {/* outlet polygons */}
        {outlets.map((o, idx) => {
          const pts = pointsForOutlet(o).map((p) => p.join(',')).join(' ');
          const fill = colors[idx % colors.length] || '#8884d8';
          return <polygon key={o} points={pts} fill={fill} fillOpacity={0.25} stroke={fill} />;
        })}

        {/* category labels */}
        {categories.map((cat, i) => {
          const angle = (Math.PI * 2 * i) / categories.length - Math.PI / 2;
          const x = cx + Math.cos(angle) * (r + 18);
          const y = cy + Math.sin(angle) * (r + 18);
          return (
            <text key={cat + i} x={x} y={y} fontSize={11} textAnchor="middle" alignmentBaseline="middle">
              {cat}
            </text>
          );
        })}

        {/* legend */}
        <g transform={`translate(${size - 140}, 18)`}>
          {outlets.map((o, i) => (
            <g key={o} transform={`translate(0, ${i * 18})`}>
              <rect x={0} y={-8} width={12} height={8} fill={colors[i % colors.length]} />
              <text x={18} y={0} fontSize={12} alignmentBaseline="middle">{o}</text>
            </g>
          ))}
        </g>
      </svg>
    </div>
  );
}
