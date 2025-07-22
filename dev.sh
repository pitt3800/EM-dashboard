#!/bin/bash

# EM Dashboard Development Server Script
# This script provides easy commands for development

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Default port
PORT=${1:-8000}

echo -e "${BLUE}🏥 EM Dashboard Development Server${NC}"
echo -e "${GREEN}===============================>${NC}"
echo ""

# Check if Python is installed
if command -v python3 &> /dev/null; then
    echo -e "${GREEN}✓${NC} Python3 found"
    echo -e "${YELLOW}Starting server on port ${PORT}...${NC}"
    echo -e "${BLUE}→ Open: http://localhost:${PORT}/er_board_system.html${NC}"
    echo ""
    echo -e "${YELLOW}Press Ctrl+C to stop the server${NC}"
    echo ""
    python3 -m http.server $PORT
elif command -v python &> /dev/null; then
    echo -e "${GREEN}✓${NC} Python found"
    echo -e "${YELLOW}Starting server on port ${PORT}...${NC}"
    echo -e "${BLUE}→ Open: http://localhost:${PORT}/er_board_system.html${NC}"
    echo ""
    echo -e "${YELLOW}Press Ctrl+C to stop the server${NC}"
    echo ""
    python -m SimpleHTTPServer $PORT
else
    echo -e "${YELLOW}⚠️  Python not found. Opening file directly in browser...${NC}"
    open er_board_system.html
fi