#!/bin/bash
# Build script for Vercel deployment
# Collects all Django static files into staticfiles_build directory

echo "Building static files..."

# Run Django's collectstatic command to gather all static files
python manage.py collectstatic --noinput

echo "Build complete!"
