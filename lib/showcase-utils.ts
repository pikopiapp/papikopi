// Showcase Inventory Management - Utility Functions
// Shared helpers dan types untuk showcase API

import { createClient } from '@supabase/supabase-js';
import { NextRequest } from 'next/server';

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL || '';
const supabaseAnonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY || '';

export const supabase = createClient(supabaseUrl, supabaseAnonKey);

// ===================================
// TYPES & INTERFACES
// ===================================

export interface AssignProductRequest {
  product_unit_id: number;
  outlet_id: number;
  notes?: string;
}

export interface ReceiveProductRequest {
  assignment_id: number;
  notes?: string;
}

export interface InitiateReturnRequest {
  product_unit_id: number;
  outlet_id: string;
  return_reason: string;
}

export interface CheckReturnRequest {
  return_id: number;
  condition_status: 'sellable' | 'damaged' | 'partially_damaged';
  condition_notes: string;
  resolution_action: 'return_to_showcase' | 'archive_as_damaged' | 'credit_outlet';
}

export interface ReassignProductRequest {
  product_unit_id: number;
  old_outlet_id: number;
  new_outlet_id: number;
  notes?: string;
}

export interface ApiResponse<T = any> {
  success: boolean;
  message: string;
  data?: T;
}

// ===================================
// AUTH HELPERS
// ===================================

export async function getAuthUser(request: NextRequest) {
  try {
    const token = request.headers.get('authorization')?.replace('Bearer ', '');
    
    if (!token) {
      return null;
    }

    // Try to get user from token first
    const { data } = await supabase.auth.getUser(token);
    if (data?.user) {
      return data.user;
    }

    // Fallback: parse JWT directly to get user info
    // JWT format: header.payload.signature
    const parts = token.split('.');
    if (parts.length !== 3) {
      return null;
    }

    try {
      const decoded = JSON.parse(Buffer.from(parts[1], 'base64').toString());
      return {
        id: decoded.sub,
        email: decoded.email,
        role: decoded.role,
      };
    } catch (e) {
      console.error('JWT decode error:', e);
      return null;
    }
  } catch (error) {
    console.error('Auth error:', error);
    return null;
  }
}

export function requireAuth(user: any | null) {
  if (!user) {
    throw new Error('UNAUTHORIZED');
  }
}

export async function requireRole(user: any, requiredRoles: string[]) {
  if (!user) {
    throw new Error('UNAUTHORIZED');
  }

  try {
    const { data } = await supabase
      .from('users')
      .select('role')
      .eq('id', user.id)
      .single();

    if (!data || !requiredRoles.includes(data.role)) {
      throw new Error('FORBIDDEN');
    }

    return data.role;
  } catch (error) {
    if (error instanceof Error && error.message === 'FORBIDDEN') {
      throw error;
    }
    console.error('Role check error:', error);
    throw new Error('UNAUTHORIZED');
  }
}

// ===================================
// RESPONSE HELPERS
// ===================================

export function successResponse<T>(
  data: T,
  message = 'Success'
): ApiResponse<T> {
  return {
    success: true,
    message,
    data,
  };
}

export function errorResponse(message: string): ApiResponse {
  return {
    success: false,
    message,
  };
}

// ===================================
// RPC CALL HELPERS
// ===================================

export async function callRpc(
  functionName: string,
  params: Record<string, any>,
  userId: string
) {
  try {
    // Add user context if not present
    if (!params.p_assigned_by && !params.p_received_by && !params.p_initiated_by && !params.p_checked_by && !params.p_moved_by) {
      // Some functions might need user_id, store it for later
    }

    const { data, error } = await supabase.rpc(functionName, params);

    if (error) {
      throw new Error(error.message);
    }

    return data;
  } catch (error) {
    if (error instanceof Error) {
      throw error;
    }
    throw new Error('RPC call failed');
  }
}

// ===================================
// VALIDATION HELPERS
// ===================================

export function validateAssignProductRequest(body: any): AssignProductRequest {
  const { product_unit_id, outlet_id, notes } = body;

  if (!product_unit_id || !outlet_id) {
    throw new Error('product_unit_id dan outlet_id harus diisi');
  }

  if (typeof product_unit_id !== 'number' || typeof outlet_id !== 'number') {
    throw new Error('product_unit_id dan outlet_id harus berupa number');
  }

  return { product_unit_id, outlet_id, notes };
}

export function validateReceiveProductRequest(body: any): ReceiveProductRequest {
  const { assignment_id, notes } = body;

  if (!assignment_id) {
    throw new Error('assignment_id harus diisi');
  }

  if (typeof assignment_id !== 'number') {
    throw new Error('assignment_id harus berupa number');
  }

  return { assignment_id, notes };
}

export function validateInitiateReturnRequest(body: any): InitiateReturnRequest {
  const { product_unit_id, outlet_id, return_reason } = body;

  if (!product_unit_id || !outlet_id || !return_reason) {
    throw new Error('product_unit_id, outlet_id, dan return_reason harus diisi');
  }

  // product_unit_id must be number (BIGINT in DB)
  if (typeof product_unit_id !== 'number') {
    throw new Error('product_unit_id harus berupa number');
  }

  // outlet_id must be string (UUID in DB)
  if (typeof outlet_id !== 'string' || outlet_id.trim() === '') {
    throw new Error('outlet_id harus berupa string UUID');
  }

  if (typeof return_reason !== 'string' || return_reason.trim() === '') {
    throw new Error('return_reason harus berupa string yang tidak kosong');
  }

  return { product_unit_id, outlet_id, return_reason };
}

export function validateCheckReturnRequest(body: any): Omit<CheckReturnRequest, 'return_id'> {
  const { condition_status, condition_notes, resolution_action } = body;

  const validConditions = ['sellable', 'damaged', 'partially_damaged'];
  const validActions = ['return_to_showcase', 'archive_as_damaged', 'credit_outlet'];

  if (!condition_status || !validConditions.includes(condition_status)) {
    throw new Error('condition_status harus salah satu dari: sellable, damaged, partially_damaged');
  }

  if (!resolution_action || !validActions.includes(resolution_action)) {
    throw new Error('resolution_action harus salah satu dari: return_to_showcase, archive_as_damaged, credit_outlet');
  }

  return { condition_status, condition_notes, resolution_action };
}

export function validateReassignProductRequest(body: any): ReassignProductRequest {
  const { product_unit_id, old_outlet_id, new_outlet_id, notes } = body;

  if (!product_unit_id || !old_outlet_id || !new_outlet_id) {
    throw new Error('product_unit_id, old_outlet_id, dan new_outlet_id harus diisi');
  }

  if (typeof product_unit_id !== 'number' || typeof old_outlet_id !== 'number' || typeof new_outlet_id !== 'number') {
    throw new Error('Semua ID harus berupa number');
  }

  return { product_unit_id, old_outlet_id, new_outlet_id, notes };
}
