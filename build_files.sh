#!/bin/bash
set -e

echo "============================================"
echo "Starting Vercel Build Process"
echo "============================================"

# Collect static files
echo "Running Django collectstatic..."
python manage.py collectstatic --noinput --clear

echo "============================================"
echo "Build Process Complete!"
echo "============================================"
