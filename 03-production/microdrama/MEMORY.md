# Memory — MicroDrama Lab

**Date:** 2026-09-24  
**Agent:** Matt Grosso Agent (doaashow-lab)  
**Request:** micro drama app with community feed, and creators corner, writers corner

---

## What was built

Enhanced the existing MicroDrama AI prototype into a full **MicroDrama Lab** single-file web app with four main areas:

1. **Community Feed** — posts (clips, theories, collabs), filter tabs, likes/comments/share demos, composer tease
2. **Creators Corner** — series dashboard, stats (series / views / collab requests / coins), open collabs board, tools (thumbnail, scheduler, analytics, link to AI Studio)
3. **Writers Corner** — script boards, logline lab (Use in Studio), trope library with heat ratings, feedback loop placeholder
4. **AI Studio** — free-form prompt → simulated 4-step generation → vertical 9:16 video player

Also includes Home (hero + trending strip) and mobile nav.

---

## Where it lives

### Clean repo (target)
- **Repo:** https://github.com/callmecoffee3/doaashow-clean  
- **Path:** `03-production/microdrama/`
  - `microdrama-app.html` — the whole app (single file)
  - `README.md` — feature overview + how to run
  - `MEMORY.md` — this file

### Source origin (messy)
- **Repo:** https://github.com/callmecoffee3/doaashow  
- **Path:** `-(Projects)/-(MICRODRAMA)/`
  - Earlier prototypes: `microdrama-ai.html`, `microdrama-app.md`, variants, zips
  - Original was AI Studio + trending only; no community / creators / writers

### Local working copy
- `/home/workdir/artifacts/03-production/microdrama/`

---

## Tech notes

- Single HTML file: Tailwind CDN + Font Awesome 6 + vanilla JS
- No backend; demo data hardcoded in JS
- Client-side routing via show/hide `.page` sections
- Generation is simulated (progress steps + sample vertical MP4)
- Sample video: `https://cdn.truefilesize.com/mp4/sample-portrait.mp4`
- Covers via picsum.photos

---

## Mapping to clean structure

| Clean folder | Role |
|--------------|------|
| `03-production/microdrama/` | Active production / story tool (this app) |
| `06-legacy/` | Old genre dumps / placeholders if more MICRODRAMA stubs are imported later |

Per doaashow-lab skill: new active work → `01-core` through `05-assets`; production / story tools → `03-production`.

---

## Future ideas (from original + this pass)

- Real AI video API (Runway, Kling, Luma, etc.)
- Auth + real community posts
- Export project/deck to Markdown or JSON
- Drag-and-drop card reordering (from original index-card workspace)
- Cloud sync / shareable project links
- Index-card workspace (Character / Scene / Prop / Animal / Prompt) from original `microdrama-app.md` — not fully ported into this Lab UI yet

---

## Commits on doaashow-clean

1. Add MicroDrama Lab app: Community Feed, Creators Corner, Writers Corner, AI Studio  
2. Fix generateDrama Promise syntax error  

---

*Memory file for the Matt Grosso / doaashow creative lab.*
