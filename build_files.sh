#!/bin/bash
set -e

echo "================================"
echo "Building for Vercel Deployment"
echo "================================"

echo "Force-installing critical packages to bypass cache..."
# 1. Force install setuptools to fix the pkg_resources crash
pip install setuptools

# 2. Force install the true modern version of widget_tweaks
pip install django-widget-tweaks==1.5.1

echo "Installing remaining dependencies..."
# 3. Install the rest of the requirements
pip install -r requirements.txt

echo "Collecting static files..."
python manage.py collectstatic --noinput --clear --verbosity 2

echo "================================"
echo "Build Complete!"
echo "================================"