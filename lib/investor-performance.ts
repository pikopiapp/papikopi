export interface OutletPerformancePoint {
  date: string;
  revenue: number;
  hpp: number;
  bonus: number;
  meal: number;
  orders: number;
  profit: number;
}

export interface OutletPerformanceBreakdown {
  daily: Array<OutletPerformancePoint & { shareInvestor: number }>;
  weekly: Array<{
    weekLabel: string;
    startDate: string;
    endDate: string;
    revenue: number;
    hpp: number;
    bonus: number;
    meal: number;
    profit: number;
    shareInvestor: number;
    orders: number;
  }>;
}

export function buildOutletPerformanceBreakdown(
  summary: OutletPerformancePoint[],
  sharePercentage: number
): OutletPerformanceBreakdown {
  const daily = summary.map((item) => ({
    ...item,
    shareInvestor: Math.round(item.profit * (sharePercentage / 100)),
  }));

  const weeklyMap = new Map<string, { startDate: string; endDate: string; revenue: number; hpp: number; bonus: number; meal: number; profit: number; orders: number }>();

  daily.forEach((item) => {
    const date = new Date(`${item.date}T00:00:00+07:00`);
    const day = date.getDay();
    const start = new Date(date);
    start.setDate(date.getDate() - ((day + 6) % 7));
    const end = new Date(start);
    end.setDate(start.getDate() + 6);

    const weekKey = `${start.toISOString().slice(0, 10)}::${end.toISOString().slice(0, 10)}`;
    const existing = weeklyMap.get(weekKey) ?? {
      startDate: start.toISOString().slice(0, 10),
      endDate: end.toISOString().slice(0, 10),
      revenue: 0,
      hpp: 0,
      bonus: 0,
      meal: 0,
      profit: 0,
      orders: 0,
    };

    existing.revenue += item.revenue;
    existing.hpp += item.hpp;
    existing.bonus += item.bonus;
    existing.meal += item.meal;
    existing.profit += item.profit;
    existing.orders += item.orders;
    weeklyMap.set(weekKey, existing);
  });

  const weekly = Array.from(weeklyMap.values())
    .map((item) => ({
      ...item,
      weekLabel: `${item.startDate} - ${item.endDate}`,
      shareInvestor: Math.round(item.profit * (sharePercentage / 100)),
    }))
    .sort((a, b) => a.startDate.localeCompare(b.startDate));

  return { daily, weekly };
}
