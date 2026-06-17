import React from 'react';

interface DataPoint {
  month: string;
  sales: number;
  target: number;
  profit: number;
}

function catmullRom2bezier(points: Array<[number, number]>) {
  // Convert array of points to a smooth cubic bezier path (returns d string)
  if (!points.length) return '';
  if (points.length === 1) return `M ${points[0][0]} ${points[0][1]}`;

  const d: string[] = [];
  for (let i = 0; i < points.length; i++) {
    const p = points[i];
    if (i === 0) {
      d.push(`M ${p[0].toFixed(2)} ${p[1].toFixed(2)}`);
    } else {
      // Catmull-Rom to Bezier conversion using neighboring points
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
  const width = 800;
  const height = 300;
  const padding = { top: 24, right: 20, bottom: 44, left: 64 };

  const chartWidth = width - padding.left - padding.right;
  const chartHeight = height - padding.top - padding.bottom;

  const values = data.map(d => d.sales);
  const max = Math.max(...values, 1);

  const xStep = data.length > 1 ? chartWidth / (data.length - 1) : chartWidth;

  const points: Array<[number, number]> = data.map((d, i) => {
    const x = padding.left + i * xStep;
    const y = padding.top + chartHeight - (d.sales / max) * chartHeight;
    return [x, y];
  });

  const path = catmullRom2bezier(points);

  // Y axis ticks
  const ticks = 4;
  const tickValues = Array.from({ length: ticks + 1 }, (_, i) => Math.round((max * i) / ticks));

  // Average target line (if targets present)
  const avgTarget = data.length ? data.reduce((s, d) => s + (d.target || 0), 0) / data.length : 0;
  const targetY = padding.top + chartHeight - (avgTarget / max) * chartHeight;

  return (
    <svg viewBox={`0 0 ${width} ${height}`} width="100%" height="auto" role="img" aria-label="Sales trend">
      <rect x={0} y={0} width={width} height={height} fill="transparent" />

      {/* grid + y-axis labels */}
      <g>
        {tickValues.map((tv, i) => {
          const y = padding.top + chartHeight - (tv / max) * chartHeight;
          return (
            <g key={i}>
              <line x1={padding.left} x2={padding.left + chartWidth} y1={y} y2={y} stroke="#eef2ff" strokeWidth={1} />
              <text x={padding.left - 10} y={y + 4} fontSize={12} textAnchor="end" fill="#374151">{formatCurrency(tv)}</text>
            </g>
          );
        })}
      </g>

      {/* target line */}
      {avgTarget > 0 && (
        <g>
          <line x1={padding.left} x2={padding.left + chartWidth} y1={targetY} y2={targetY} stroke="#f97316" strokeDasharray="6 4" strokeWidth={1} />
          <text x={padding.left + chartWidth - 4} y={targetY - 6} fontSize={11} textAnchor="end" fill="#92400e">Avg target</text>
        </g>
      )}

      {/* smoothed sales path */}
      <g>
        <path d={path} fill="none" stroke="#3b82f6" strokeWidth={2.5} strokeLinejoin="round" strokeLinecap="round" />
        {/* subtle area fill */}
        {points.length > 0 && (
          <path d={`${path} L ${padding.left + chartWidth} ${padding.top + chartHeight} L ${padding.left} ${padding.top + chartHeight} Z`} fill="#bfdbfe" fillOpacity={0.12} />
        )}

        {/* data points with accessible titles for hover */}
        {points.map((p, i) => (
          <g key={i}>
            <circle cx={p[0]} cy={p[1]} r={4.5} fill="#1e40af" stroke="#fff" strokeWidth={1.5} />
            <title>{`${data[i].month}: ${formatCurrency(data[i].sales)}`}</title>
          </g>
        ))}
      </g>

      {/* x-axis labels */}
      <g transform={`translate(${padding.left}, ${padding.top + chartHeight + 18})`}>
        {data.map((d, i) => (
          <text key={i} x={i * xStep} y={12} fontSize={12} textAnchor="middle" fill="#374151">{d.month}</text>
        ))}
      </g>

      {/* y-axis label */}
      <text x={12} y={padding.top + chartHeight / 2} fontSize={12} fill="#6b7280" transform={`rotate(-90 12,${padding.top + chartHeight / 2})`} textAnchor="middle">Sales (IDR)</text>

    </svg>
  );
}
