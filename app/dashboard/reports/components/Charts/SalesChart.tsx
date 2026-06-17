"use client";
import React, { useEffect, useState } from 'react';

interface Props {
  data: Array<any>;
  formatCurrency?: (v: number) => string;
}

export default function SalesChart(props: Props) {
  const [Chart, setChart] = useState<React.ComponentType<Props> | null>(null);

  useEffect(() => {
    let mounted = true;
    const load = () => {
      import('./SalesChart.client').then((m) => {
        if (mounted) setChart(() => m.default);
      });
    };

    if (typeof (window as any).requestIdleCallback === 'function') {
      (window as any).requestIdleCallback(load);
    } else {
      // defer slightly so initial UI can settle
      setTimeout(load, 200);
    }

    return () => {
      mounted = false;
    };
  }, []);

  if (!Chart) {
    return (
      <div style={{ height: 400 }} className="flex items-center justify-center text-gray-500">
        Loading chart...
      </div>
    );
  }

  return <Chart {...props} />;
}
