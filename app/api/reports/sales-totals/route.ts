import { NextResponse } from 'next/server';
import { supabase } from '@/lib/supabase';
import {
  getBusinessDayRange,
  getDateBoundaryInJakarta,
  isValidDateOnly,
  parseDateOnlyAsJakarta,
} from '@/lib/helpers/business-day';

// Single-row KPI totals (revenue / orders / profit / cups) via get_sales_totals,
// so callers stop downloading every sale row just to count units.
export async function GET(req: Request) {
  const url = new URL(req.url);
  const start = url.searchParams.get('start');
  const end = url.searchParams.get('end');
  const outlet = url.searchParams.get('outlet');
  const businessDay = url.searchParams.get('business_day');
  const startHour = Number(url.searchParams.get('business_day_start_hour') ?? 4);
  const useBusinessDay = businessDay === '1' || businessDay === 'true' || businessDay === 'yes';

  if (!start || !end) {
    return NextResponse.json({ error: 'start and end are required' }, { status: 400 });
  }
  if (!isValidDateOnly(start) || !isValidDateOnly(end)) {
    return NextResponse.json({ error: 'Invalid start or end date' }, { status: 400 });
  }

  const startDate = useBusinessDay
    ? getBusinessDayRange(parseDateOnlyAsJakarta(start), startHour).start
    : getDateBoundaryInJakarta(start, false);
  const endDate = useBusinessDay
    ? getBusinessDayRange(parseDateOnlyAsJakarta(end), startHour).end
    : getDateBoundaryInJakarta(end, true);

  if (Number.isNaN(startDate.getTime()) || Number.isNaN(endDate.getTime())) {
    return NextResponse.json({ error: 'Invalid computed date boundary' }, { status: 400 });
  }

  const { data, error } = await supabase.rpc('get_sales_totals', {
    p_start: startDate.toISOString(),
    p_end: endDate.toISOString(),
    p_outlet: outlet || null,
  });

  if (error) {
    return NextResponse.json({ error: error.message }, { status: 500 });
  }

  const row = Array.isArray(data) ? data[0] : null;

  return NextResponse.json({
    revenue: Number(row?.revenue ?? 0),
    orders: Number(row?.orders ?? 0),
    profit: Number(row?.profit ?? 0),
    cups: Number(row?.cups ?? 0),
    meta: { engine: 'sql', startIso: startDate.toISOString(), endIso: endDate.toISOString() },
  });
}
