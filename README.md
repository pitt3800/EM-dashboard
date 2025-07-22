# 🏥 EM Dashboard (응급실 게시판 시스템)

Emergency Room Notice Board System - A simple, offline-first web application for managing departmental notices.

## 🚀 Quick Start

### Option 1: Using Make (Recommended)

```bash
make dev     # Start server on http://localhost:8000
make open    # Open directly in browser
```

### Option 2: Using Shell Script

```bash
./dev.sh     # Start server on port 8000
./dev.sh 3000  # Start on custom port
```

### Option 3: Direct Browser

```bash
open er_board_system.html  # macOS
# Or double-click the file
```

## 🛠️ Terminal Setup

For enhanced development experience:

```bash
source terminal-setup.sh
```

This provides helpful aliases:

- `er-dev` - Start development server
- `er-open` - Open in browser
- `er-backup` - Create backup
- `er-test-browsers` - Test in multiple browsers
- `er-session` - Start full dev session

## 📁 Project Structure

```
EM dashboard/
├── er_board_system.html    # Main application (all-in-one)
├── dev.sh                  # Development server script
├── Makefile               # Common commands
├── terminal-setup.sh      # Terminal enhancements
├── CLAUDE.md             # AI assistant guide
└── README.md             # This file
```

## 🏥 Supported Departments

- **GI** - Gastrointestinal (소화기내과)
- **CV** - Cardiovascular (심혈관내과)
- **Biliary** - Biliary (담도)
- **DR** - Diagnostic Radiology (영상의학과)
- **NS** - Neurosurgery (신경외과)
- **GS** - General Surgery (일반외과)
- **PLM** - Pulmonary Medicine (호흡기내과)

## 💾 Data Storage

All data is stored locally in browser's localStorage. No server required!

### Backup Data

```bash
make backup  # Creates timestamped backup
```

### Clear Data (Browser Console)

```javascript
localStorage.removeItem("notices");
location.reload();
```

## 🔧 Development

No build process needed! Edit `er_board_system.html` directly.

### Code Organization

The file uses a modular structure:

```css
/* ========================================
     📦 MODULE: [Module Name]
     ======================================== */
```

## 📱 Features

- ✅ Offline-first (works without internet)
- ✅ Responsive design
- ✅ Department filtering
- ✅ Date range support
- ✅ Backup/Restore functionality
- ✅ Korean language interface
- ✅ No dependencies (except CDN libraries)

## 🌐 Browser Compatibility

Works on all modern browsers:

- Chrome/Edge (Recommended)
- Safari
- Firefox

## 📄 License

Internal use only - 내부 사용 전용
