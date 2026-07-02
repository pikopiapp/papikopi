import React from 'react';

interface DataPoint {
  month: string;
  revenue: number;
  cost: number;
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

export default function ProfitLossChartServer({ data, formatCurrency }: { data: DataPoint[]; formatCurrency: (n: number) => string }) {
  const width = 900;
  const height = 320;
  const padding = { top: 20, right: 20, bottom: 56, left: 72 };
  const chartWidth = width - padding.left - padding.right;
  const chartHeight = height - padding.top - padding.bottom;

  const combined = data.flatMap(d => [d.revenue, d.cost, d.profit]);
  const max = Math.max(...combined, 1);
  const xStep = data.length > 1 ? chartWidth / (data.length - 1) : chartWidth;

  const revPoints: Array<[number, number]> = data.map((d, i) => {
    const x = padding.left + i * xStep;
    const y = padding.top + chartHeight - (d.revenue / max) * chartHeight;
    return [x, y];
  });
  const costPoints: Array<[number, number]> = data.map((d, i) => {
    const x = padding.left + i * xStep;
    const y = padding.top + chartHeight - (d.cost / max) * chartHeight;
    return [x, y];
  });
  const profitPoints: Array<[number, number]> = data.map((d, i) => {
    const x = padding.left + i * xStep;
    const y = padding.top + chartHeight - (d.profit / max) * chartHeight;
    return [x, y];
  });

  const revPath = catmullRom2bezier(revPoints);
  const costPath = catmullRom2bezier(costPoints);
  const profitPath = catmullRom2bezier(profitPoints);

  const ticks = 4;
  const tickValues = Array.from({ length: ticks + 1 }, (_, i) => Math.round((max * i) / ticks));

  return (
    <svg viewBox={`0 0 ${width} ${height}`} width="100%" height={height} role="img" aria-label="Profit and loss chart">
      <rect x={0} y={0} width={width} height={height} fill="transparent" />

      {/* grid + y labels */}
      <g>
        {tickValues.map((tv, i) => {
          const y = padding.top + chartHeight - (tv / max) * chartHeight;
          return (
            <g key={i}>
              <line x1={padding.left} x2={padding.left + chartWidth} y1={y} y2={y} stroke="#f3f4f6" strokeWidth={1} />
              <text x={padding.left - 12} y={y + 4} fontSize={12} textAnchor="end" fill="#4b5563">{formatCurrency(tv)}</text>
            </g>
          );
        })}
      </g>

      {/* profit area fill (between revenue & cost) */}
      {revPoints.length > 0 && costPoints.length > 0 && (
        <path d={`${revPath} L ${padding.left + chartWidth} ${padding.top + chartHeight} L ${padding.left} ${padding.top + chartHeight} Z`} fill="#bbf7d0" fillOpacity={0.08} />
      )}

      {/* revenue and cost lines */}
      <g>
        <path d={revPath} fill="none" stroke="#2563eb" strokeWidth={2.5} strokeLinejoin="round" strokeLinecap="round" />
        <path d={costPath} fill="none" stroke="#ef4444" strokeWidth={2} strokeDasharray="6 4" />

        {/* points */}
        {revPoints.map((p, i) => (
          <g key={`r-${i}`}>
            <circle cx={p[0]} cy={p[1]} r={4} fill="#1e40af" stroke="#fff" strokeWidth={1.2} />
            <title>{`${data[i].month} — Revenue: ${formatCurrency(data[i].revenue)}`}</title>
          </g>
        ))}
        {costPoints.map((p, i) => (
          <g key={`c-${i}`}>
            <circle cx={p[0]} cy={p[1]} r={3.5} fill="#b91c1c" stroke="#fff" strokeWidth={1} />
            <title>{`${data[i].month} — Cost: ${formatCurrency(data[i].cost)}`}</title>
          </g>
        ))}
      </g>

      {/* x-axis labels */}
      <g transform={`translate(${padding.left}, ${padding.top + chartHeight + 20})`}>
        {data.map((d, i) => (
          <text key={i} x={i * xStep} y={14} fontSize={12} textAnchor="middle" fill="#374151">{d.month}</text>
        ))}
      </g>

      <text x={12} y={padding.top + chartHeight / 2} fontSize={12} fill="#6b7280" transform={`rotate(-90 12,${padding.top + chartHeight / 2})`} textAnchor="middle">Amount (IDR)</text>
    </svg>
  );
}
