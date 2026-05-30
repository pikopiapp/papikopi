# /dashboard/expenses

Halaman pencatatan pengeluaran harian untuk dashboard web PapiKopi.

## Fitur
- List pengeluaran harian (filter per tanggal)
- Tambah, edit, hapus pengeluaran
- Kategori, deskripsi, jumlah, tanggal
- Modal form untuk tambah/edit
- Terhubung ke Supabase table `expenses`

## API
- `/api/expenses?date=YYYY-MM-DD` (GET)
- `/api/expenses` (POST)
- `/api/expenses/[id]` (PUT, DELETE)

## Catatan
- Pastikan variabel environment Supabase sudah di-setup di `.env.local`:
  - `NEXT_PUBLIC_SUPABASE_URL`
  - `NEXT_PUBLIC_SUPABASE_ANON_KEY`
- UI menggunakan Tailwind CSS (pastikan sudah setup)

---

Untuk pengembangan lebih lanjut: tambahkan validasi, notifikasi, dan integrasi dengan fitur keuangan lain jika diperlukan.