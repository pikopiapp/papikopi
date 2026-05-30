# Assign Product Flow - Troubleshooting & Usage Guide

## Penyebab Data Tidak Tersimpan

### 1. **UNIQUE Constraint Error**
Jika product-outlet combination sudah pernah dialokasikan, API akan UPDATE quantity (bukan CREATE baru).

**Solusi**: Gunakan produk + outlet yang belum pernah dialokasikan sebelumnya.

### 2. **RLS/Permission Issues**
Jika ada error permission denied - periksa RLS policies di table `showcase_allocations`.

**Solusi**: Table harus allow INSERT untuk anon user, atau gunakan Service Role key.

### 3. **Failed Allocation Response**
API akan return error dengan detail jika ada masalah:
```json
{
  "success": false,
  "error": "Error message here"
}
```

## Cara Menggunakan Flow yang Benar

### Step 1: Pilih Outlet
- Dropdown di Step 1 menampilkan semua outlet
- Setelah dipilih, system akan load:
  - Produk yang tersedia di showcase
  - Alokasi existing untuk outlet ini

### Step 2: Pilih Produk & Input Quantity
- Grid card menampilkan semua produk showcase
- Klik card untuk select produk
- Input quantity di dalam card
- Klik "Alokasi Produk" untuk submit

### Step 3: Lihat Hasil
- Table menampilkan semua alokasi untuk outlet yang dipilih
- Bisa edit (klik ✏️) atau delete (klik 🗑️)
- Data akan otomatis tersimpan ke database

## API Endpoints

### POST `/api/showcase/allocate`
Create atau update allocation

**Request:**
```json
{
  "showcase_product_id": "uuid",
  "outlet_id": "uuid",
  "quantity": 10
}
```

**Response Success:**
```json
{
  "success": true,
  "message": "10 units of Gula Aren (M) allocated to outlet",
  "data": {
    "showcase_product_id": "...",
    "outlet_id": "...",
    "quantity_added": 10,
    "outlet_total_allocation": 15,
    "product_total_allocated": 150,
    "remaining": 85
  }
}
```

**Response Error:**
```json
{
  "success": false,
  "error": "Insufficient quantity. Available: 50, Requested: 100"
}
```

### GET `/api/showcase/assignments?outlet_id=xxx`
Get all allocations untuk outlet

**Response:**
```json
[
  {
    "id": "...",
    "showcase_product_id": "...",
    "outlet_id": "...",
    "quantity": 10,
    "created_at": "2026-05-16T04:00:21.759255",
    "product_name": "Gula Aren (M)",
    "outlet_name": "Outlet A"
  }
]
```

### PUT `/api/showcase/assignments/[id]`
Update allocation quantity

**Request:**
```json
{
  "quantity": 20
}
```

### DELETE `/api/showcase/assignments/[id]`
Delete allocation

## Debugging

### Enable Console Logs
Browser console akan menampilkan:
```javascript
// Saat allocation success
console.log('Allocation response:', response.data)

// Saat ada error
console.error('Assign error:', error)
```

### Check Network Tab
1. Open Browser DevTools (F12)
2. Go to Network tab
3. Submit allocation
4. Lihat request/response untuk `/api/showcase/allocate`

## Testing Checklist

- [ ] Outlet tersedia di dropdown
- [ ] Produk tersedia sebagai card list  
- [ ] Input quantity bisa ditulis di card
- [ ] Tombol Alokasi bisa diklik
- [ ] Data tersimpan ke database
- [ ] Tabel Step 3 menampilkan hasil
- [ ] Edit bisa mengubah quantity
- [ ] Delete bisa menghapus alokasi

## Common Issues

| Issue | Cause | Solution |
|-------|-------|----------|
| Outlet tidak muncul | API outlets error | Cek `/api/outlets` endpoint |
| Produk tidak muncul | API inventory error | Cek `/api/showcase/inventory` endpoint |
| Data tidak tersimpan | Unique constraint | Gunakan produk-outlet yang belum dialokasi |
| Data tidak tersimpan | RLS issue | Cek database RLS policies |
| Table kosong | API GET error | Cek `/api/showcase/assignments?outlet_id=xxx` |

