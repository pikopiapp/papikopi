export type UserRole = "barista" | "manager" | "owner" | "investor" | "admin";

export interface User {
  id: string;
  name: string;
  email: string;
  phone?: string;
  role: UserRole;
  outlet_id: string | null;
  is_active: boolean;
  created_at: string;
}

export interface Outlet {
  id: string;
  name: string;
  type: "gerobak" | "becak_listrik" | "toko";
  address?: string;
  created_at: string;
}

export interface Product {
  id: string;
  name: string;
  price: number;
  category_id: string;
  hpp: number; // HPP (Harga Pokok Penjualan)
  is_active: boolean;
  created_at: string;
}

export interface Category {
  id: string;
  name: string;
  created_at: string;
}

export interface Ingredient {
  id: string;
  name: string;
  unit: string;
  cost: number;
  created_at: string;
}

export interface Recipe {
  id: string;
  product_id: string;
  ingredient_id: string;
  quantity: number;
  created_at: string;
}

export interface Sale {
  id: string;
  outlet_id: string;
  barista_id: string;
  total_amount: number;
  payment_method: "cash" | "qris";
  hpp_total: number;
  bonus_amount: number;
  profit: number;
  created_at: string;
}

export interface SaleItem {
  id: string;
  sale_id: string;
  product_id: string;
  quantity: number;
  price: number;
  hpp: number;
  created_at: string;
}

export interface BonusTier {
  id: string;
  min: number;
  max: number;
  percentage: number;
  created_at: string;
}

export interface CashDeposit {
  id: string;
  outlet_id: string;
  barista_id: string;
  expected_cash: number;
  actual_cash: number;
  difference: number;
  status: "match" | "less" | "over";
  created_at: string;
}

export interface StockTransfer {
  id: string;
  from_outlet_id: string;
  to_outlet_id: string;
  status: "requested" | "approved" | "sent" | "received";
  created_at: string;
}

export interface Notification {
  id: string;
  user_id: string;
  title: string;
  message: string;
  type: "success" | "info" | "warning" | "error";
  read: boolean;
  created_at: string;
}

export interface ProductBatch {
  id: string;
  batch_code: string;
  product_id: string;
  product_name?: string;
  quantity: number;
  production_date: string;
  expired_date?: string;
  status: "ready" | "assigned" | "sold" | "expired" | "sent_to_showcase";
  outlet_id?: string | null;
  outlet_name?: string;
  notes?: string;
  created_at: string;
}
