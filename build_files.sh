#!/bin/bash
set -e

echo "================================"
echo "Building for Vercel Deployment"
echo "================================"

echo "Collecting static files..."
python manage.py collectstatic --noinput --clear --verbosity 2

echo "================================"
echo "Build Complete!"
echo "================================"
