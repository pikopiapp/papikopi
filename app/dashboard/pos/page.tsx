"use client";

import { useCartStore } from "@/lib/store/cart";
import { useEffect, useState } from "react";
import { supabase } from "@/lib/supabase";
import { Product } from "@/lib/types";
import { ShoppingCart, Trash2, Send } from "lucide-react";
import QRCode from "qrcode";
import { useAuthStore } from '@/lib/store/auth';

export default function POSPage() {
  const [products, setProducts] = useState<Product[]>([]);
  const [categories, setCategories] = useState<any[]>([]);
  const [selectedCategory, setSelectedCategory] = useState<string>("");
  const [paymentMethod, setPaymentMethod] = useState<"cash" | "qris">("cash");
  const [loading, setLoading] = useState(false);
  const [qrCode, setQrCode] = useState<string>("");
  const [saleSaved, setSaleSaved] = useState(false);
  const [saleTotal, setSaleTotal] = useState<number | null>(null);

  const cart = useCartStore();
  const { outletId, user } = useAuthStore();

  // Load products and categories
  useEffect(() => {
    const loadData = async () => {
      try {
        const { data: categoriesData } = await supabase.from("categories").select("*");
        setCategories(categoriesData || []);

        if (categoriesData && categoriesData.length > 0) {
          setSelectedCategory(categoriesData[0].id);
        }
      } catch (err) {
        console.error("Failed to load data:", err);
      }
    };

    loadData();
  }, []);

  // Load products for selected category
  useEffect(() => {
    const loadProducts = async () => {
      if (!selectedCategory) return;

      try {
        const { data } = await supabase
          .from("products")
          .select("*")
          .eq("category_id", selectedCategory)
          .eq("is_active", true);

        setProducts(data || []);
      } catch (err) {
        console.error("Failed to load products:", err);
      }
    };

    loadProducts();
  }, [selectedCategory]);

  const handleCheckout = async () => {
    if (cart.items.length === 0) {
      alert("Keranjang kosong!");
      return;
    }

    setLoading(true);
    try {
      // prefer real outlet and user from auth store
      if (!outletId || !user?.id) {
        alert('Outlet atau user tidak ditemukan. Pastikan Anda login dan outlet dipilih.');
        setLoading(false);
        return;
      }
      // Send full sale to server API which computes HPP and inserts sale + items atomically
      const itemsPayload = cart.items.map((it) => ({
        product_id: it.product.id,
        quantity: it.quantity,
        price: it.product.price,
        hpp: it.product.hpp,
      }));

      const res = await fetch('/api/sales', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          outlet_id: outletId,
          barista_id: user.id,
          total_amount: cart.getTotal(),
          payment_method: paymentMethod,
          items: itemsPayload,
        }),
      });

      const json = await res.json();
      if (!res.ok || json.error) throw new Error(json.error || 'Failed to create sale');

      const saleId = json.sale_id;
      // Create QR code
      const qrData = `/o/${saleId}`;
      const qrImage = await QRCode.toDataURL(qrData);
      setQrCode(qrImage);

      // Save sale total before clearing cart
      const total = cart.getTotal();
      setSaleTotal(Number(total));
      setSaleSaved(true);
      cart.clear();
    } catch (err) {
      console.error("Checkout error:", err);
      alert("Gagal memproses transaksi!");
    } finally {
      setLoading(false);
    }
  };

  if (saleSaved && qrCode) {
    return (
      <div className="min-h-screen bg-gray-50 flex items-center justify-center p-4">
        <div className="bg-white rounded-lg shadow-2xl p-8 max-w-md w-full text-center">
          <h2 className="text-2xl font-bold text-green-600 mb-4">Transaksi Berhasil!</h2>
          <img src={qrCode} alt="QR Code" className="mx-auto mb-6 w-64 h-64" />
          <p className="text-gray-700 mb-6">Total: <span className="font-bold text-xl">Rp {saleTotal ? saleTotal.toLocaleString("id-ID") : cart.getTotal().toLocaleString("id-ID")}</span></p>
          <button
            onClick={() => {
              setSaleSaved(false);
              setQrCode("");
            }}
            className="w-full bg-amber-600 hover:bg-amber-700 text-white font-bold py-2 px-4 rounded-lg"
          >
            Transaksi Baru
          </button>
        </div>
      </div>
    );
  }

  return (
    <div className="min-h-screen bg-gray-50 p-6">
      <h1 className="text-3xl font-bold text-gray-800 mb-6">Sistem POS</h1>

      <div className="grid grid-cols-1 lg:grid-cols-4 gap-6">
        {/* Products */}
        <div className="lg:col-span-3">
          {/* Categories */}
          <div className="bg-white rounded-lg shadow p-4 mb-6">
            <div className="flex overflow-x-auto gap-2">
              {categories.map((cat) => (
                <button
                  key={cat.id}
                  onClick={() => setSelectedCategory(cat.id)}
                  className={`px-4 py-2 rounded-lg whitespace-nowrap font-medium transition ${
                    selectedCategory === cat.id
                      ? "bg-amber-600 text-white"
                      : "bg-gray-200 text-gray-800 hover:bg-gray-300"
                  }`}
                >
                  {cat.name}
                </button>
              ))}
            </div>
          </div>

          {/* Product Grid */}
          <div className="grid grid-cols-2 md:grid-cols-3 gap-4">
            {products.map((product) => (
              <button
                key={product.id}
                onClick={() => cart.addItem(product, 1)}
                className="bg-white p-4 rounded-lg shadow hover:shadow-lg transition text-left"
              >
                <h3 className="font-bold text-gray-800">{product.name}</h3>
                <p className="text-amber-600 font-bold mt-2">Rp {product.price.toLocaleString("id-ID")}</p>
              </button>
            ))}
          </div>
        </div>

        {/* Cart */}
        <div className="lg:col-span-1">
          <div className="bg-white rounded-lg shadow p-6 sticky top-6">
            <div className="flex items-center gap-2 mb-4">
              <ShoppingCart className="w-6 h-6" />
              <h2 className="text-xl font-bold">Keranjang</h2>
            </div>

            {cart.items.length === 0 ? (
              <p className="text-gray-500 text-center py-8">Keranjang kosong</p>
            ) : (
              <>
                {/* Cart Items */}
                <div className="space-y-3 mb-4 max-h-96 overflow-y-auto">
                  {cart.items.map((item) => (
                    <div key={item.product.id} className="bg-gray-50 p-3 rounded">
                      <div className="flex justify-between items-start mb-2">
                        <p className="font-medium text-sm text-gray-800">{item.product.name}</p>
                        <button
                          onClick={() => cart.removeItem(item.product.id)}
                          className="text-red-600 hover:text-red-800"
                        >
                          <Trash2 className="w-4 h-4" />
                        </button>
                      </div>
                      <div className="flex items-center gap-2">
                        <button
                          onClick={() =>
                            cart.updateQuantity(item.product.id, item.quantity - 1)
                          }
                          className="bg-gray-200 px-2 py-1 rounded text-sm"
                        >
                          -
                        </button>
                        <span className="flex-1 text-center">{item.quantity}</span>
                        <button
                          onClick={() =>
                            cart.updateQuantity(item.product.id, item.quantity + 1)
                          }
                          className="bg-gray-200 px-2 py-1 rounded text-sm"
                        >
                          +
                        </button>
                      </div>
                      <p className="text-amber-600 font-bold mt-2 text-sm">
                        Rp {(item.product.price * item.quantity).toLocaleString("id-ID")}
                      </p>
                    </div>
                  ))}
                </div>

                {/* Total */}
                <div className="border-t pt-4 mb-4">
                  <div className="flex justify-between mb-4">
                    <span className="font-bold">Total:</span>
                    <span className="font-bold text-xl text-amber-600">
                      Rp {cart.getTotal().toLocaleString("id-ID")}
                    </span>
                  </div>

                  {/* Payment Method */}
                  <div className="mb-4">
                    <p className="text-sm font-medium text-gray-700 mb-2">Pembayaran:</p>
                    <div className="space-y-2">
                      <label className="flex items-center">
                        <input
                          type="radio"
                          value="cash"
                          checked={paymentMethod === "cash"}
                          onChange={(e) => setPaymentMethod(e.target.value as "cash" | "qris")}
                          className="mr-2"
                        />
                        <span className="text-sm">CASH</span>
                      </label>
                      <label className="flex items-center">
                        <input
                          type="radio"
                          value="qris"
                          checked={paymentMethod === "qris"}
                          onChange={(e) => setPaymentMethod(e.target.value as "cash" | "qris")}
                          className="mr-2"
                        />
                        <span className="text-sm">QRIS</span>
                      </label>
                    </div>
                  </div>

                  {/* Checkout Button */}
                  <button
                    onClick={handleCheckout}
                    disabled={loading}
                    className="w-full bg-green-600 hover:bg-green-700 disabled:bg-gray-400 text-white font-bold py-3 px-4 rounded-lg flex items-center justify-center gap-2 transition"
                  >
                    <Send className="w-5 h-5" />
                    {loading ? "Proses..." : "Bayar"}
                  </button>
                </div>
              </>
            )}
          </div>
        </div>
      </div>
    </div>
  );
}
