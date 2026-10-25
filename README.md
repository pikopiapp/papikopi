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
- `Send to Printer` will dispatch labels directly to the configured printer, while `Preview` still opens a browser label preview.

Notes: remove debug logging before long-term production deployment.
