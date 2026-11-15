# Papikopi Dashboard

Platform manajemen outlet kopi dengan dashboard analytics dan inventory management.

## Deployment
- Live URL: https://papikopi.vercel.app
- Deployments: Automatic via GitHub integration

## Recent Fixes
- 2026-06-16: Fix for `sale_items` missing in `/api/sales/by-outlet` responses — batch `.in('sale_id', [...])` calls to avoid Supabase "Bad Request" when querying many IDs. Added opt-in debug via `?debug=1` for diagnostics.
- 2026-06-29: Small dashboard UI adjustment for Monthly Summary layout and HPP labeling.

## Thermal Label Printing
- New direct TSPL label printing support is available for `/dashboard/warehouse`.
- The feature sends a TSPL job to a network thermal printer from the server API at `/api/labels/print`.
- Configure the printer in `papikopi-web/.env.local`:
  - `PRINTER_HOST=192.168.x.x`
  - `PRINTER_PORT=9100` (optional, defaults to `9100`)
- The dashboard prints labels through `Preview`: it opens a browser label preview and the user prints
  via the Chrome dialog.
- Current printer: Xprinter XP-460B — direct thermal, 203 dpi (8 dots/mm), max width 108 mm, USB/Bluetooth.
  With the Windows USB driver, use `Preview` and print from the browser: paper 108 × 24 mm, margin None.
  Each sheet holds two 50 × 20 mm labels with 2 mm side margins, a 4 mm gap between labels and a
  4 mm gap to the next row (2 + 50 + 4 + 50 + 2 = 108 mm wide; 20 + 4 = 24 mm pitch).
- The API still accepts `send_to_printer` to dispatch a raw TSPL job to `PRINTER_HOST:9100`, but only
  for a printer reachable over TCP from the server; Vercel cannot reach a LAN address, so USB setups
  must use `Preview`. There is no UI button for direct dispatch.

Notes: remove debug logging before long-term production deployment.
