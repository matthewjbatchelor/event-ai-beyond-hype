#!/bin/bash

echo "Starting local web server..."
echo "Press Ctrl+C to stop the server"
echo ""
echo "Opening website in your browser..."
echo "If it doesn't open automatically, navigate to: http://localhost:8000"
echo ""

# Try to open in browser
if command -v open &> /dev/null; then
    sleep 1 && open http://localhost:8000 &
elif command -v xdg-open &> /dev/null; then
    sleep 1 && xdg-open http://localhost:8000 &
fi

# Start Python HTTP server
python3 -m http.server 8000
