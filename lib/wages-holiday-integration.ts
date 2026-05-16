/**
 * Integration Guide: Holiday Bonus Calculation di Wages Page
 * 
 * Cara mengintegrasikan holiday-detector ke dalam existing wages page
 */

// ============================================================================
// STEP 1: Import di bagian atas file
// ============================================================================

import { isHoliday, getHolidayDescription } from '@/lib/holiday-detector';
import { calculateDailyWage } from '@/lib/bonus-calculator';

// ============================================================================
// STEP 2: Saat fetch wage payments, tambahkan holiday info
// ============================================================================

interface WagePaymentWithHolidayInfo extends WagePayment {
  isHolidayDate?: boolean;
  holidayName?: string;
}

const enrichPaymentsWithHolidayInfo = (payments: WagePayment[]): WagePaymentWithHolidayInfo[] => {
  return payments.map(payment => {
    const paymentDate = new Date(payment.date);
    const isHolidayDate = isHoliday(paymentDate);
    
    return {
      ...payment,
      isHolidayDate,
      holidayName: isHolidayDate ? getHolidayDescription(paymentDate) : undefined,
    };
  });
};

// ============================================================================
// STEP 3: Saat menampilkan bonus di table, tambahkan indicator
// ============================================================================

const PaymentRow = ({ payment }: { payment: WagePaymentWithHolidayInfo }) => {
  return (
    <tr className="border-b hover:bg-gray-50">
      {/* ... kolom lainnya ... */}
      
      <td className="px-4 py-3">
        <div className="flex items-center gap-2">
          <span className="font-bold">
            Rp {payment.bonus.toLocaleString('id-ID')}
          </span>
          
          {/* Indicator hari libur */}
          {payment.isHolidayDate && (
            <span className="inline-flex items-center gap-1 px-2 py-1 bg-orange-100 text-orange-700 text-xs font-semibold rounded-full">
              🎉 {payment.holidayName}
            </span>
          )}
        </div>
      </td>
      
      {/* ... kolom lainnya ... */}
    </tr>
  );
};

// ============================================================================
// STEP 4: Di detail modal/page, tampilkan bonus breakdown
// ============================================================================

const BonusBreakdownSection = ({ 
  payment, 
  isHolidayDate 
}: { 
  payment: WagePayment; 
  isHolidayDate: boolean;
}) => {
  const wageResult = calculateDailyWage(payment.total_omset, isHolidayDate, true);
  
  return (
    <div className="space-y-4">
      {/* Holiday Badge */}
      {isHolidayDate && (
        <div className="bg-orange-50 border-l-4 border-orange-500 p-4 rounded">
          <p className="font-semibold text-orange-800">
            🎉 Perhitungan Bonus Hari Libur (20% semua tier)
          </p>
        </div>
      )}
      
      {/* Tier Breakdown */}
      <div className="bg-gray-50 rounded-lg p-4">
        <h3 className="font-semibold text-gray-800 mb-3">Rincian Bonus Per Tier:</h3>
        <div className="space-y-2">
          {wageResult.breakdown?.map((tier, idx) => (
            <div 
              key={idx} 
              className={`flex justify-between p-3 rounded ${
                isHolidayDate 
                  ? 'bg-orange-100 border border-orange-300' 
                  : 'bg-blue-100 border border-blue-300'
              }`}
            >
              <div>
                <p className="font-semibold text-gray-800">{tier.label}</p>
                <p className="text-xs text-gray-600">
                  Rp {tier.fromAmount.toLocaleString('id-ID')} → 
                  Rp {tier.toAmount.toLocaleString('id-ID')} 
                  ({tier.percentage}%)
                </p>
              </div>
              <p className="font-bold text-green-600">
                Rp {tier.bonus.toLocaleString('id-ID')}
              </p>
            </div>
          ))}
        </div>
      </div>
      
      {/* Summary */}
      <div className="bg-green-50 border-l-4 border-green-500 p-4 rounded">
        <div className="flex justify-between items-center">
          <span className="font-semibold text-gray-800">Total Bonus</span>
          <span className="text-2xl font-bold text-green-600">
            Rp {payment.bonus.toLocaleString('id-ID')}
          </span>
        </div>
      </div>
    </div>
  );
};

// ============================================================================
// STEP 5: Filter/Search dengan holiday indication
// ============================================================================

interface FilterOptions {
  statusFilter?: string;
  holidayOnly?: boolean;
  dateFrom?: Date;
  dateTo?: Date;
}

const filterPayments = (
  payments: WagePaymentWithHolidayInfo[], 
  options: FilterOptions
): WagePaymentWithHolidayInfo[] => {
  return payments.filter(payment => {
    // Status filter
    if (options.statusFilter && options.statusFilter !== 'all') {
      if (payment.status !== options.statusFilter) return false;
    }
    
    // Holiday only
    if (options.holidayOnly && !payment.isHolidayDate) {
      return false;
    }
    
    // Date range
    if (options.dateFrom || options.dateTo) {
      const paymentDate = new Date(payment.date);
      if (options.dateFrom && paymentDate < options.dateFrom) return false;
      if (options.dateTo && paymentDate > options.dateTo) return false;
    }
    
    return true;
  });
};

// ============================================================================
// STEP 6: Statistics dengan breakdown hari libur
// ============================================================================

interface WageStats {
  totalPayments: number;
  totalPaid: number;
  totalShortfall: number;
  approvedCount: number;
  pendingCount: number;
  rejectedCount: number;
  
  // NEW: Holiday stats
  holidayPayments: number;
  holidayBonus: number;
  weekdayPayments: number;
  weekdayBonus: number;
}

const calculateStats = (payments: WagePaymentWithHolidayInfo[]): WageStats => {
  let holidayPayments = 0;
  let holidayBonus = 0;
  let weekdayPayments = 0;
  let weekdayBonus = 0;
  
  payments.forEach(payment => {
    if (payment.isHolidayDate) {
      holidayPayments++;
      holidayBonus += payment.bonus;
    } else {
      weekdayPayments++;
      weekdayBonus += payment.bonus;
    }
  });
  
  return {
    // ... existing stats ...
    holidayPayments,
    holidayBonus,
    weekdayPayments,
    weekdayBonus,
  };
};

// ============================================================================
// STEP 7: Display Stats Cards
// ============================================================================

const StatsCard = ({ stats }: { stats: WageStats }) => {
  const avgHolidayBonus = stats.holidayPayments > 0 
    ? stats.holidayBonus / stats.holidayPayments 
    : 0;
  const avgWeekdayBonus = stats.weekdayPayments > 0 
    ? stats.weekdayBonus / stats.weekdayPayments 
    : 0;
  
  return (
    <div className="grid grid-cols-2 md:grid-cols-4 gap-4 mb-6">
      {/* Existing cards */}
      
      {/* Holiday Stats */}
      <div className="bg-gradient-to-br from-orange-50 to-orange-100 border-l-4 border-orange-500 rounded-lg p-4">
        <p className="text-xs font-semibold text-gray-600 mb-1">🎉 Pembayaran Hari Libur</p>
        <p className="text-2xl font-bold text-orange-600">{stats.holidayPayments}</p>
        <p className="text-xs text-gray-600 mt-1">
          Bonus: Rp {(avgHolidayBonus / 1000).toFixed(0)}rb rata-rata
        </p>
      </div>
      
      {/* Weekday Stats */}
      <div className="bg-gradient-to-br from-blue-50 to-blue-100 border-l-4 border-blue-500 rounded-lg p-4">
        <p className="text-xs font-semibold text-gray-600 mb-1">📅 Pembayaran Hari Kerja</p>
        <p className="text-2xl font-bold text-blue-600">{stats.weekdayPayments}</p>
        <p className="text-xs text-gray-600 mt-1">
          Bonus: Rp {(avgWeekdayBonus / 1000).toFixed(0)}rb rata-rata
        </p>
      </div>
    </div>
  );
};

// ============================================================================
// COMPLETE EXAMPLE: Updated fetchPayments function
// ============================================================================

const fetchPaymentsWithHolidayInfo = async () => {
  try {
    // Existing fetch logic
    const { data, error } = await supabase
      .from('cash_deposit_handovers')
      .select('*')
      .order('submitted_at', { ascending: false });
    
    if (error) throw error;
    
    // Enrich dengan holiday info
    const enrichedData = enrichPaymentsWithHolidayInfo(data || []);
    
    // Calculate stats
    const calculatedStats = calculateStats(enrichedData);
    
    // Update state
    setPayments(enrichedData);
    setStats(calculatedStats);
    
  } catch (error) {
    console.error('Error fetching payments:', error);
  }
};

// ============================================================================
// EXPORT untuk reusable di komponen lain
// ============================================================================

export {
  enrichPaymentsWithHolidayInfo,
  filterPayments,
  calculateStats,
  BonusBreakdownSection,
  PaymentRow,
  StatsCard,
};
