import React from 'react';

interface DataPoint {
  month: string;
  sales: number;
  target: number;
  profit: number;
}

function catmullRom2bezier(points: Array<[number, number]>) {
  if (!points.length) return '';
  if (points.length === 1) return `M ${points[0][0]} ${points[0][1]}`;

  const d: string[] = [];
  for (let i = 0; i < points.length; i++) {
    const p = points[i];
    if (i === 0) {
      d.push(`M ${p[0].toFixed(2)} ${p[1].toFixed(2)}`);
    } else {
      const p0 = points[i - 2] || points[i - 1];
      const p1 = points[i - 1];
      const p2 = points[i];
      const p3 = points[i + 1] || p2;

      const bp1x = p1[0] + (p2[0] - p0[0]) / 6;
      const bp1y = p1[1] + (p2[1] - p0[1]) / 6;
      const bp2x = p2[0] - (p3[0] - p1[0]) / 6;
      const bp2y = p2[1] - (p3[1] - p1[1]) / 6;

      d.push(`C ${bp1x.toFixed(2)} ${bp1y.toFixed(2)}, ${bp2x.toFixed(2)} ${bp2y.toFixed(2)}, ${p2[0].toFixed(2)} ${p2[1].toFixed(2)}`);
    }
  }
  return d.join(' ');
}

export default function SalesChartServer({ data, formatCurrency }: { data: DataPoint[]; formatCurrency: (n: number) => string }) {
  const width = 900;
  const height = 340;
  const padding = { top: 24, right: 24, bottom: 56, left: 78 };

  const chartWidth = width - padding.left - padding.right;
  const chartHeight = height - padding.top - padding.bottom;
  const baselineY = padding.top + chartHeight;

  const salesValues = data.map((d) => Number(d.sales || 0));
  const profitValues = data.map((d) => Number(d.profit || 0));
  const targetValues = data.map((d) => Number(d.target || 0));
  const maxValue = Math.max(...salesValues, ...profitValues, ...targetValues, 1);

  const xStep = data.length > 1 ? chartWidth / (data.length - 1) : chartWidth;

  const salesPoints: Array<[number, number]> = data.map((d, i) => {
    const x = padding.left + i * xStep;
    const y = padding.top + chartHeight - (Number(d.sales || 0) / maxValue) * chartHeight;
    return [x, y];
  });

  const profitPoints: Array<[number, number]> = data.map((d, i) => {
    const x = padding.left + i * xStep;
    const y = padding.top + chartHeight - (Number(d.profit || 0) / maxValue) * chartHeight;
    return [x, y];
  });

  const salesPath = catmullRom2bezier(salesPoints);
  const profitPath = catmullRom2bezier(profitPoints);
  const avgTarget = data.length ? data.reduce((s, d) => s + (d.target || 0), 0) / data.length : 0;
  const targetY = padding.top + chartHeight - (avgTarget / maxValue) * chartHeight;
  const areaPath = salesPoints.length > 0 ? `${salesPath} L ${salesPoints[salesPoints.length - 1][0]} ${baselineY} L ${salesPoints[0][0]} ${baselineY} Z` : '';

  const ticks = 5;
  const tickValues = Array.from({ length: ticks + 1 }, (_, i) => Math.round((maxValue * (ticks - i)) / ticks));

  return (
    <div className="rounded-2xl border border-slate-200 bg-linear-to-br from-slate-50 via-white to-slate-100 p-4 shadow-sm">
      <svg viewBox={`0 0 ${width} ${height}`} width="100%" height="auto" role="img" aria-label="Sales trend">
        <defs>
          <linearGradient id="salesGradient" x1="0%" y1="0%" x2="0%" y2="100%">
            <stop offset="0%" stopColor="#06b6d4" stopOpacity="0.35" />
            <stop offset="100%" stopColor="#06b6d4" stopOpacity="0.04" />
          </linearGradient>
          <linearGradient id="profitGradient" x1="0%" y1="0%" x2="0%" y2="100%">
            <stop offset="0%" stopColor="#8b5cf6" stopOpacity="0.28" />
            <stop offset="100%" stopColor="#8b5cf6" stopOpacity="0.03" />
          </linearGradient>
          <filter id="softGlow" x="-50%" y="-50%" width="200%" height="200%">
            <feDropShadow dx="0" dy="2" stdDeviation="3" floodColor="#06b6d4" floodOpacity="0.2" />
          </filter>
        </defs>

        <rect x="0" y="0" width={width} height={height} rx="20" fill="transparent" />

        <g>
          {tickValues.map((tv, i) => {
            const y = padding.top + ((maxValue - tv) / maxValue) * chartHeight;
            return (
              <g key={i}>
                <line x1={padding.left} x2={padding.left + chartWidth} y1={y} y2={y} stroke="#e2e8f0" strokeWidth={1} />
                <text x={padding.left - 10} y={y + 4} fontSize={11} textAnchor="end" fill="#64748b">{formatCurrency(tv)}</text>
              </g>
            );
          })}
        </g>

        {avgTarget > 0 && (
          <g>
            <line x1={padding.left} x2={padding.left + chartWidth} y1={targetY} y2={targetY} stroke="#f59e0b" strokeDasharray="6 4" strokeWidth={1.3} />
            <text x={padding.left + chartWidth - 2} y={targetY - 8} fontSize={11} textAnchor="end" fill="#b45309">Target rata-rata</text>
          </g>
        )}

        <g>
          <path d={areaPath} fill="url(#salesGradient)" />
          <path d={salesPath} fill="none" stroke="#0ea5e9" strokeWidth={3} strokeLinejoin="round" strokeLinecap="round" filter="url(#softGlow)" />
          {profitPoints.some((_, idx) => Number(data[idx].profit || 0) > 0) && (
            <path d={profitPath} fill="none" stroke="#8b5cf6" strokeWidth={2.2} strokeDasharray="7 5" strokeLinejoin="round" strokeLinecap="round" />
          )}

          {salesPoints.map((p, i) => {
            const saleValue = Number(data[i].sales || 0);
            return (
              <g key={`sales-${i}`}>
                <circle cx={p[0]} cy={p[1]} r={5.5} fill="#ffffff" stroke="#0ea5e9" strokeWidth={2.2} />
                <title>{`${data[i].month}: ${formatCurrency(saleValue)}`}</title>
              </g>
            );
          })}

          {profitPoints.map((p, i) => {
            const profitValue = Number(data[i].profit || 0);
            if (profitValue <= 0) return null;
            return (
              <g key={`profit-${i}`}>
                <circle cx={p[0]} cy={p[1]} r={4.2} fill="#ffffff" stroke="#8b5cf6" strokeWidth={1.8} />
                <title>{`${data[i].month}: Profit ${formatCurrency(profitValue)}`}</title>
              </g>
            );
          })}
        </g>

        <g transform={`translate(${padding.left}, ${padding.top + chartHeight + 20})`}>
          {data.map((d, i) => {
            const x = i * xStep;
            return (
              <text key={i} x={x} y={14} fontSize={12} textAnchor="middle" fill="#475569">{d.month}</text>
            );
          })}
        </g>

        <text x={12} y={padding.top + chartHeight / 2} fontSize={12} fill="#64748b" transform={`rotate(-90 12,${padding.top + chartHeight / 2})`} textAnchor="middle">Sales & Profit</text>
      </svg>

      <div className="mt-3 flex flex-wrap items-center gap-4 text-sm text-slate-600">
        <div className="flex items-center gap-2">
          <span className="h-2.5 w-2.5 rounded-full bg-cyan-500" />
          <span>Sales</span>
        </div>
        <div className="flex items-center gap-2">
          <span className="h-2.5 w-2.5 rounded-full bg-violet-500" />
          <span>Profit</span>
        </div>
        <div className="flex items-center gap-2">
          <span className="h-2.5 w-2.5 rounded-full bg-amber-500" />
          <span>Target rata-rata</span>
        </div>
      </div>
    </div>
  );
}
