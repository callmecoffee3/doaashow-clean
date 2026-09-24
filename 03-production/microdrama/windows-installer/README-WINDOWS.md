# MicroDrama Lab — Windows

## Options

### A) Browser install (works now — no build)

1. Download this folder (or the zip from the repo).
2. Double-click **`Install-Browser.bat`**

- Copies the app to `%LOCALAPPDATA%\MicroDramaLab`
- Creates a desktop shortcut
- Opens MicroDrama Lab in your default browser

Uninstall: run **`Uninstall-Browser.bat`**

### B) Full desktop .exe installer (build on Windows)

Requires Node.js 18+.

```bat
cd windows-installer
npm install
npm run dist
```

Output in `dist\`:

| File | What it is |
|------|------------|
| `MicroDramaLab-Setup-1.0.0.exe` | NSIS installer (desktop + Start Menu) |
| `MicroDramaLab-Portable-1.0.0.exe` | Portable — no install, just run |

Uses Electron + electron-builder (see `package.json`).

### C) Open HTML only

Open `app\index.html` in Chrome, Edge, or Firefox.

---

## Files in this folder

| File | Purpose |
|------|--------|
| `Install-Browser.bat` | One-click browser install |
| `Uninstall-Browser.bat` | Remove browser install |
| `app/index.html` | The MicroDrama Lab app |
| `main.js` | Electron entry (for .exe build) |
| `package.json` | electron-builder config |
| `README-WINDOWS.md` | This file |

---

*doaashow lab • 2026*
