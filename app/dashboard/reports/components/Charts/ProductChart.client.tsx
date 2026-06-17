"use client";
import React, { useMemo } from 'react';

interface Props {
  data: Array<Record<string, any>>;
  formatCurrency?: (v: number) => string;
}

export default function ProductChartClient({ data, formatCurrency }: Props) {
  const w = 900;
  const h = 400;
  const pad = 60;

  const { products, sold, revenue, maxSold, maxRevenue } = useMemo(() => {
    const products = data.map((d) => String(d.product ?? ''));
    const sold = data.map((d) => Number(d.sold ?? 0));
    const revenue = data.map((d) => Number(d.revenue ?? 0));
    const maxSold = Math.max(1, ...sold);
    const maxRevenue = Math.max(1, ...revenue);
    return { products, sold, revenue, maxSold, maxRevenue };
  }, [data]);

  const barW = (w - pad * 2) / Math.max(1, products.length);

  return (
    <div style={{ width: '100%', overflowX: 'auto' }}>
      <svg viewBox={`0 0 ${w} ${h}`} width="100%" height={h} preserveAspectRatio="xMinYMid meet">
        <rect x={0} y={0} width={w} height={h} fill="transparent" />
        {/* x labels and bars */}
        {products.map((p, i) => {
          const x = pad + i * barW + barW * 0.1;
          const soldH = ((sold[i] ?? 0) / Math.max(1, Math.max(...sold))) * (h - pad * 2);
          const revenueH = ((revenue[i] ?? 0) / Math.max(1, Math.max(...revenue))) * (h - pad * 2);
          return (
            <g key={p + i}>
              <rect x={x} y={h - pad - soldH} width={barW * 0.35} height={soldH} fill="#8884d8" />
              <rect x={x + barW * 0.4} y={h - pad - revenueH} width={barW * 0.35} height={revenueH} fill="#82ca9d" />
              <text x={x + barW * 0.175} y={h - pad + 18} fontSize={10} textAnchor="middle" transform={`rotate(-25 ${x + barW * 0.175},${h - pad + 18})`}>
                {p}
              </text>
            </g>
          );
        })}

        {/* y axis line */}
        <line x1={pad} y1={pad} x2={pad} y2={h - pad} stroke="#ddd" />

        {/* legend */}
        <g transform={`translate(${w - 220}, 12)`}>
          <rect x={0} y={0} width={200} height={36} rx={4} fill="rgba(255,255,255,0.9)" stroke="#eee" />
          <g transform="translate(8,8)">
            <rect x={0} y={0} width={12} height={8} fill="#8884d8" />
            <text x={18} y={8} fontSize={12}>Units Sold</text>
          </g>
          <g transform="translate(8,24)">
            <rect x={0} y={0} width={12} height={8} fill="#82ca9d" />
            <text x={18} y={8} fontSize={12}>Revenue</text>
          </g>
        </g>
      </svg>
    </div>
  );
}
