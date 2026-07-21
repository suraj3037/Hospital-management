#!/bin/bash
set -e

echo "============================================"
echo "Vercel Build Process Starting"
echo "============================================"

# Check Python version
echo "Python version:"
python --version

# Install dependencies (ensure all packages are available)
echo "Installing dependencies..."
pip install -r requirements.txt

# Verify Django installation
echo "Verifying Django setup..."
python manage.py check

# Collect all static files
echo "Collecting static files..."
python manage.py collectstatic --noinput --clear --verbosity 2

echo "============================================"
echo "Build Process Complete!"
echo "Static files collected to: staticfiles_build/"
echo "============================================"
