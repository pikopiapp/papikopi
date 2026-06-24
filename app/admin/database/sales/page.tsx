"use client";
import React, { useEffect, useState } from 'react';
import { supabase } from '@/lib/supabase';

type Sale = Record<string, any>;

export default function SalesPage() {
  const [sales, setSales] = useState<Sale[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    let mounted = true;
    const load = async () => {
      try {
        setLoading(true);
        const { data: sessionData } = await supabase.auth.getSession();
        const token = sessionData?.session?.access_token;

        const res = await fetch('/api/sales', {
          headers: token ? { Authorization: `Bearer ${token}` } : undefined,
        });
        const json = await res.json();
        if (!mounted) return;
        if (res.ok) setSales(Array.isArray(json.sales) ? json.sales : (json.data ?? []));
        else setError(json.error || 'Failed to load');
      } catch (e: any) {
        setError(e?.message || String(e));
      } finally {
        if (mounted) setLoading(false);
      }
    };

    load();
    return () => { mounted = false; };
  }, []);

  return (
    <div>
      <h2 className="text-xl font-medium mb-4">Sales</h2>
      {loading && <p>Loading…</p>}
      {error && <p className="text-red-600">{error}</p>}

      {!loading && !error && (
        <div className="bg-white rounded shadow overflow-auto">
          {(() => {
            if (sales.length === 0) return <p className="p-4">No sales found.</p>;

            // derive columns from union of keys across sales
            const keys = Array.from(sales.reduce((acc: Set<string>, it: any) => {
              Object.keys(it || {}).forEach(k => acc.add(k));
              return acc;
            }, new Set<string>()));

            return (
              <table className="min-w-full text-left">
                <thead className="bg-gray-100">
                  <tr>
                    {keys.map(k => (
                      <th key={k} className="px-4 py-2">{k}</th>
                    ))}
                  </tr>
                </thead>
                <tbody>
                  {sales.map((s, i) => (
                    <tr key={s.id ?? i} className="border-t">
                      {keys.map(k => (
                        <td key={k} className="px-4 py-2 align-top whitespace-pre-wrap">{String((s as any)[k] ?? '')}</td>
                      ))}
                    </tr>
                  ))}
                </tbody>
              </table>
            );
          })()}
        </div>
      )}
    </div>
  );
}

