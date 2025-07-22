# EM Dashboard Makefile
# Simple commands for development

.PHONY: help dev open backup clean

# Default target
help:
	@echo "🏥 EM Dashboard Commands:"
	@echo "========================"
	@echo "  make dev     - Start development server (port 8000)"
	@echo "  make dev-alt - Start development server (port 3000)"
	@echo "  make open    - Open directly in browser"
	@echo "  make backup  - Create a backup of the HTML file"
	@echo "  make clean   - Remove backup files"
	@echo ""

# Start development server on default port 8000
dev:
	@./dev.sh

# Start development server on alternate port 3000
dev-alt:
	@./dev.sh 3000

# Open directly in browser
open:
	@open er_board_system.html

# Create a timestamped backup
backup:
	@mkdir -p backups
	@cp er_board_system.html backups/er_board_system_$$(date +%Y%m%d_%H%M%S).html
	@echo "✅ Backup created: backups/er_board_system_$$(date +%Y%m%d_%H%M%S).html"

# Clean backup files
clean:
	@echo "🗑️  Cleaning backup files..."
	@rm -rf backups
	@echo "✅ Cleaned!"