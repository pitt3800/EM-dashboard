#!/bin/bash

# EM Dashboard Terminal Setup Script
# Run this to set up useful aliases and functions for your terminal session

echo "🏥 EM Dashboard Terminal Setup"
echo "============================="
echo ""

# Colors
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m'

# Create aliases for this session
alias er-dev='./dev.sh'
alias er-dev-alt='./dev.sh 3000'
alias er-open='open er_board_system.html'
alias er-backup='make backup'
alias er-git-status='git status --short'
alias er-git-log='git log --oneline -10'

# Function to quickly test in different browsers
er-test-browsers() {
    echo -e "${BLUE}Opening in multiple browsers...${NC}"
    open -a "Google Chrome" er_board_system.html
    open -a "Safari" er_board_system.html
    open -a "Firefox" er_board_system.html 2>/dev/null || echo "Firefox not installed"
}

# Function to check localStorage data
er-check-storage() {
    echo -e "${YELLOW}To check localStorage data:${NC}"
    echo "1. Open browser console (F12)"
    echo "2. Run: localStorage.getItem('notices')"
    echo "3. Or: JSON.parse(localStorage.getItem('notices'))"
}

# Function to clear localStorage (use with caution)
er-clear-storage() {
    echo -e "${YELLOW}To clear localStorage:${NC}"
    echo "1. Open browser console (F12)"
    echo "2. Run: localStorage.removeItem('notices')"
    echo "3. Refresh the page"
}

# Function to create a development session
er-session() {
    echo -e "${GREEN}Starting EM Dashboard development session...${NC}"
    echo ""
    
    # Show git status
    echo -e "${BLUE}📊 Git Status:${NC}"
    git status --short
    echo ""
    
    # Start the server
    echo -e "${BLUE}🚀 Starting development server...${NC}"
    ./dev.sh
}

# Export functions so they're available in the shell
export -f er-test-browsers
export -f er-check-storage
export -f er-clear-storage
export -f er-session

echo -e "${GREEN}✅ Terminal setup complete!${NC}"
echo ""
echo "Available commands:"
echo "  ${BLUE}er-dev${NC}           - Start development server (port 8000)"
echo "  ${BLUE}er-dev-alt${NC}       - Start development server (port 3000)"
echo "  ${BLUE}er-open${NC}          - Open in default browser"
echo "  ${BLUE}er-backup${NC}        - Create backup"
echo "  ${BLUE}er-test-browsers${NC} - Test in multiple browsers"
echo "  ${BLUE}er-check-storage${NC} - Instructions to check localStorage"
echo "  ${BLUE}er-clear-storage${NC} - Instructions to clear localStorage"
echo "  ${BLUE}er-session${NC}       - Start full dev session"
echo "  ${BLUE}er-git-status${NC}    - Quick git status"
echo "  ${BLUE}er-git-log${NC}       - Recent git commits"
echo ""
echo "To make these permanent, add to your ~/.zshrc or ~/.bashrc:"
echo "  ${YELLOW}source \"$(pwd)/terminal-setup.sh\"${NC}"