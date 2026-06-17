import React from 'react';

interface ProductData {
  product: string;
  sold: number;
  revenue: number;
}

export default function ProductPerformanceChartServer({ data, formatCurrency }: { data: ProductData[]; formatCurrency: (n: number) => string }) {
  const width = 900;
  const barAreaHeight = Math.max(48 * data.length, 200);
  const height = barAreaHeight + 80;
  const padding = { top: 24, right: 20, bottom: 40, left: 220 };
  const chartWidth = width - padding.left - padding.right;

  const max = Math.max(...data.map(d => d.revenue), 1);

  return (
    <svg viewBox={`0 0 ${width} ${height}`} width="100%" height="auto" role="img" aria-label="Product performance">
      <rect x={0} y={0} width={width} height={height} fill="transparent" />

      <g transform={`translate(${padding.left}, ${padding.top})`}>
        {data.map((d, i) => {
          const y = i * 48;
          const w = (d.revenue / max) * chartWidth;
          return (
            <g key={d.product} transform={`translate(0, ${y})`}>
              <text x={-12} y={20} fontSize={13} textAnchor="end" fill="#374151">{d.product}</text>
              <rect x={0} y={4} width={w} height={24} rx={6} fill="#60a5fa" />
              <text x={Math.max(8, w - 8)} y={20} fontSize={12} fill="#fff" textAnchor={w > 60 ? 'end' : 'start'}>{formatCurrency(d.revenue)}</text>
            </g>
          );
        })}
      </g>

      <text x={12} y={padding.top + (barAreaHeight / 2)} fontSize={12} fill="#6b7280" transform={`rotate(-90 12,${padding.top + (barAreaHeight / 2)})`} textAnchor="middle">Revenue (IDR)</text>
    </svg>
  );
}
