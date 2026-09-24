# Memory — MicroDrama Lab

**Date:** 2026-09-24  
**Agent:** Matt Grosso Agent (doaashow-lab)  
**Request:** micro drama app with community feed, creators corner, writers corner → Windows installer

---

## What was built

### App
Full **MicroDrama Lab** single-file web app:

1. **Community Feed** — clips, theories, collabs
2. **Creators Corner** — series, stats, collabs, tools
3. **Writers Corner** — boards, loglines, tropes, feedback
4. **AI Studio** — prompt → simulated generation → 9:16 player

### Windows package
Folder: `03-production/microdrama/windows-installer/`

| Item | Notes |
|------|--------|
| `Install-Browser.bat` | Instant install — copies HTML to LocalAppData, desktop shortcut, opens browser |
| `Uninstall-Browser.bat` | Removes browser install |
| `main.js` + `package.json` | Electron + electron-builder source to build real `.exe` |
| `README-WINDOWS.md` | How to install / build |

**Real NSIS/portable .exe:** run on a Windows machine with Node:
```
cd windows-installer
npm install
npm run dist
```
Produces `MicroDramaLab-Setup-1.0.0.exe` and portable `.exe`.

(Linux lab sandbox could not finish a full Electron Windows cross-build in time; source is ready on GitHub.)

---

## Paths

| Location | Path |
|----------|------|
| Clean repo | https://github.com/callmecoffee3/doaashow-clean/tree/main/03-production/microdrama |
| App HTML | `03-production/microdrama/microdrama-app.html` |
| Windows kit | `03-production/microdrama/windows-installer/` |
| Source origin | doaashow `-(Projects)/-(MICRODRAMA)/` |

---

## Tech

- HTML: Tailwind CDN, Font Awesome, vanilla JS
- Installer: batch + PowerShell shortcut
- Desktop app path: Electron 33 + electron-builder (NSIS + portable)

---

*Memory file for the Matt Grosso / doaashow creative lab.*
