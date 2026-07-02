import { supabase } from '@/lib/supabase';

type InvestorUserLike = {
  id?: string | null;
  email?: string | null;
};

interface InvestorProfileRecord {
  id?: string | null;
  email?: string | null;
  name?: string | null;
  phone?: string | null;
  outlet_id?: string | null;
  role?: string | null;
}

export interface ResolvedInvestorContext {
  investorId: string | null;
  profile: InvestorProfileRecord | null;
  candidateIds: string[];
}

export interface InvestorAssignmentRow {
  id: string;
  outlet_id: string | null;
  investment_amount: number | null;
  margin_percentage: number | null;
  status: string | null;
  start_date: string | null;
}

export async function resolveInvestorContext(user: InvestorUserLike | null | undefined): Promise<ResolvedInvestorContext> {
  const candidateIds = new Set<string>();
  const email = user?.email?.trim().toLowerCase();

  if (user?.id) {
    candidateIds.add(user.id);
  }

  let profile: InvestorProfileRecord | null = null;

  if (user?.id) {
    const { data } = await supabase
      .from('users')
      .select('id, email, name, phone, outlet_id, role')
      .eq('id', user.id)
      .maybeSingle();

    if (data) {
      profile = data as InvestorProfileRecord;
      if (data.id) {
        candidateIds.add(data.id);
      }
    }
  }

  if (email && (!profile || String(profile.email || '').toLowerCase() !== email)) {
    const { data } = await supabase
      .from('users')
      .select('id, email, name, phone, outlet_id, role')
      .ilike('email', email)
      .maybeSingle();

    if (data) {
      profile = data as InvestorProfileRecord;
      if (data.id) {
        candidateIds.add(data.id);
      }
    }
  }

  return {
    investorId: (profile?.id as string | undefined) ?? user?.id ?? null,
    profile,
    candidateIds: Array.from(candidateIds),
  };
}

export async function fetchInvestorAssignments(user: InvestorUserLike | null | undefined) {
  const { candidateIds } = await resolveInvestorContext(user);

  if (candidateIds.length === 0) {
    return { rows: [] as InvestorAssignmentRow[], investorId: null as string | null };
  }

  const { data, error } = await supabase
    .from('investor_assignments')
    .select('id, outlet_id, investment_amount, margin_percentage, status, start_date')
    .in('investor_id', candidateIds)
    .order('created_at', { ascending: false });

  if (error) {
    throw error;
  }

  return { rows: (data || []) as InvestorAssignmentRow[], investorId: candidateIds[0] ?? null };
}
