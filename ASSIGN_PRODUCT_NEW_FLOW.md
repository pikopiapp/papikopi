# Assign Product Flow - Update Documentation

## Perubahan Flow di `/showcase/assign`

### Flow Lama
1. Pilih Produk (dropdown)
2. Pilih Outlet (button cards)
3. Input Quantity
4. Klik Assign

### Flow Baru ✨
1. **Pilih Outlet (Step 1)** - Dropdown select
   - Load semua outlet dari database
   - Saat outlet dipilih, data di refresh

2. **Alokasi Produk (Step 2)** - Visible hanya setelah outlet dipilih
   - Dropdown select produk yang tersedia
   - Input quantity
   - Tombol "Alokasi Produk" atau "Update Alokasi" (jika edit mode)
   - Tombol "Batal" (hanya saat edit)

3. **Daftar Alokasi (Step 3)** - Table dengan CRUD
   - Tampilan tabel dengan kolom: Produk, Quantity, Tanggal, Aksi
   - Action buttons:
     - ✏️ Edit - Populate form untuk update
     - 🗑️ Delete - Hapus alokasi dengan confirmation

## API Endpoints CRUD

### GET `/api/showcase/assignments`
```bash
# Get assignments untuk outlet tertentu
GET /api/showcase/assignments?outlet_id=<outlet_id>

Response:
[
  {
    id: string,
    showcase_product_id: string,
    outlet_id: string,
    quantity: number,
    created_at: string,
    product_name: string,
    outlet_name: string
  }
]
```

### GET `/api/showcase/assignments/[id]`
```bash
# Get single assignment detail
GET /api/showcase/assignments/<id>
```

### POST `/api/showcase/allocate` (Existing)
```bash
# Create new allocation
POST /api/showcase/allocate
{
  showcase_product_id: string,
  outlet_id: string,
  quantity: number
}
```

### PUT `/api/showcase/assignments/[id]`
```bash
# Update existing allocation
PUT /api/showcase/assignments/<id>
{
  quantity: number
}

Response:
{
  success: boolean,
  message: string
}
```

### DELETE `/api/showcase/assignments/[id]`
```bash
# Delete allocation
DELETE /api/showcase/assignments/<id>

Response:
{
  success: boolean,
  message: string
}
```

## File yang Dibuat/Dimodifikasi

### File Baru
1. `/app/components/showcase/AssignProductNewComponent.tsx`
   - Komponen baru dengan flow 3-step
   - State management untuk edit/delete
   - CRUD integration dengan API

2. `/app/api/showcase/assignments/route.ts`
   - GET endpoint untuk list assignments
   - Mendukung filter by outlet_id

3. `/app/api/showcase/assignments/[id]/route.ts`
   - GET single assignment
   - PUT untuk update
   - DELETE untuk hapus

### File Dimodifikasi
1. `/app/showcase/assign/page.tsx`
   - Import dari `AssignProductNewComponent` (bukan `AssignProductComponent` lagi)

## Features

✅ **Step-by-step flow** - Lebih jelas dan terstruktur
✅ **Dropdown outlet** - Mudah memilih outlet tujuan
✅ **List assignment** - Lihat semua alokasi untuk outlet yang dipilih
✅ **CRUD Operations**:
  - Create - Alokasi produk baru
  - Read - List dan detail alokasi
  - Update - Edit quantity alokasi
  - Delete - Hapus alokasi dengan confirmation

✅ **Edit mode** - Pilih baris → otomatis populate form → update
✅ **Loading & error states** - UX yang better
✅ **Responsive design** - Mobile & desktop friendly

## Testing Notes

1. Pilih outlet → sistem load produk & alokasi existing
2. Coba create alokasi baru
3. Coba update alokasi (klik edit icon)
4. Coba delete alokasi (dengan confirmation)
5. Lihat table update otomatis setelah setiap operasi
