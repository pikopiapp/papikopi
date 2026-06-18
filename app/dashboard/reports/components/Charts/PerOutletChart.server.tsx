import React from 'react';

interface OutletPoint {
  name: string;
  sales: number;
  profit: number;
  count: number;
}

export default function PerOutletChartServer({ data, formatCurrency }: { data: OutletPoint[]; formatCurrency: (n: number) => string }) {
  const width = 900;
  const barHeight = 28;
  const gap = 12;
  const leftLabelWidth = 220;
  const chartWidth = width - leftLabelWidth - 40;
  const height = data.length * (barHeight + gap) + 40;

  const max = Math.max(...data.map(d => d.sales), 1);

  return (
    <svg viewBox={`0 0 ${width} ${height}`} width="100%" height="auto" role="img" aria-label="Per-outlet sales">
      <rect x={0} y={0} width={width} height={height} fill="transparent" />
      <g transform={`translate(${leftLabelWidth}, 20)` }>
        {data.map((d, i) => {
          const y = i * (barHeight + gap);
          const w = Math.round((d.sales / max) * chartWidth);
          return (
            <g key={d.name} transform={`translate(0, ${y})`}>
              <rect x={0} y={0} width={w} height={barHeight} fill="#3b82f6" rx={6} />
              <text x={w + 8} y={barHeight / 2 + 4} fontSize={12} fill="#111827">{formatCurrency(d.sales)}</text>
            </g>
          );
        })}
      </g>
      <g transform={`translate(12, 20)`}>
        {data.map((d, i) => {
          const y = i * (barHeight + gap) + barHeight / 2 + 4;
          return (
            <text key={d.name} x={0} y={y} fontSize={13} fill="#374151" style={{ fontWeight: 600 }}>{d.name}</text>
          );
        })}
      </g>
    </svg>
  );
}
