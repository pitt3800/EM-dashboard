# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is an Emergency Room (ER) Notice Board System (응급실 게시판 시스템) - a single-page web application for managing departmental notices in a hospital emergency room setting. The entire application is contained within a single HTML file (`er_board_system.html`).

## Architecture

### Technology Stack
- **Frontend Only**: Pure HTML5, CSS3, and vanilla JavaScript
- **No Backend**: All data stored in browser localStorage
- **External Dependencies** (via CDN):
  - Bootstrap 5.3.0 for responsive design
  - Font Awesome 6.4.0 for icons
  - Google Fonts (Inter) for typography

### Key Design Decisions
- **Single File Architecture**: Everything is in `er_board_system.html` for easy deployment
- **Offline First**: Works completely offline using localStorage
- **No Build Process**: Open directly in browser, no compilation needed

## Development Commands

Since this is a static HTML file with no build tools:

```bash
# Open in browser (macOS)
open er_board_system.html

# Start a local server (if Python installed)
python3 -m http.server 8000
# Then navigate to http://localhost:8000/er_board_system.html

# No build, test, or lint commands - this is a standalone file
```

## Code Organization

The code follows a modular comment structure:

```javascript
/* ========================================
     📦 MODULE: [Module Name]
     ======================================== */
```

Main modules:
1. **CSS Variables & Reset**: Global styling and theme colors
2. **Typography & Base Styles**: Font settings and base elements
3. **Components**: Card designs, buttons, forms
4. **Department Badges**: Department-specific styling
5. **Responsive Design**: Mobile adaptations
6. **JavaScript Core**: Notice management logic
7. **UI Functions**: Display and filtering
8. **Event Handlers**: User interaction logic

## Data Structure

Notices are stored in localStorage as JSON:

```javascript
{
  id: Date.now(),
  department: "GI", // GI, CV, Biliary, DR, NS, GS, PLM
  date: "2024-01-15",
  endDate: "2024-01-20", // optional
  content: "Notice content",
  author: "작성자 이름"
}
```

## Adding New Features

### Adding a New Department
1. Add to the department select in HTML (`departmentSelect`)
2. Add department colors in CSS (`.department-badge.[dept-code]`)
3. Add icon mapping in `getDepartmentIcon()` function

### Modifying the UI
- Component styles are in the CSS Components module
- Use existing CSS variables for consistent theming
- Follow the card-based design pattern

## Important Conventions

1. **Language**: All user-facing text is in Korean
2. **Date Format**: YYYY-MM-DD (ISO format in code, displayed as YYYY년 MM월 DD일)
3. **Icons**: Use Font Awesome 6.4.0 classes
4. **Colors**: Use CSS variables (--primary-color, --secondary-color, etc.)
5. **Module Comments**: Maintain the module separator comments for organization

## Testing Approach

Manual testing only - no automated tests. Test scenarios:
1. Create notices for different departments
2. Test date filtering and department filtering
3. Verify notice persistence after page reload
4. Test backup/restore functionality
5. Verify responsive design on mobile devices

## Backup/Restore Format

The backup file is a JSON array of notice objects:
```json
[
  {
    "id": 1234567890,
    "department": "GI",
    "date": "2024-01-15",
    "content": "Notice content",
    "author": "Author name"
  }
]
```

## Common Tasks

### Deploy the Application
Simply copy `er_board_system.html` to any web server or open locally.

### Clear All Data
Open browser console and run:
```javascript
localStorage.removeItem('notices');
location.reload();
```

### Migrate to Multi-User System
Would require:
1. Backend API development
2. Database for notice storage
3. User authentication system
4. Real-time synchronization
5. Refactor to use modern framework (React/Vue/Angular)