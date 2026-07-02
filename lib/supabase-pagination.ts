/**
 * Helpers to fetch all rows from a Supabase/PostgREST query using range paging.
 * Some tables can be large; calling .range in a loop ensures we collect all rows
 * while keeping each page size bounded.
 */
export async function fetchAllPaginatedRows<T = any>(baseQuery: any, pageSize = 1000): Promise<T[]> {
  const results: T[] = [];
  let start = 0;

  while (true) {
    // clone or reuse the query builder by calling .range(start, end)
    const q = typeof baseQuery.range === 'function' ? baseQuery.range(start, start + pageSize - 1) : baseQuery;
    const res = await q;

    // supabase-js returns an object { data, error }
    const data = res?.data ?? res;
    const error = res?.error;
    if (error) {
      throw new Error(error.message || String(error));
    }

    if (!Array.isArray(data) || data.length === 0) break;

    results.push(...data);
    if (data.length < pageSize) break;
    start += pageSize;
  }

  return results;
}
