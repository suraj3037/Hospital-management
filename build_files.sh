#!/bin/bash
set -e

echo "================================"
echo "Building for Vercel Deployment"
echo "================================"

echo "Installing dependencies..."
pip install -r requirements.txt

echo "Running database migrations..."
python manage.py migrate --noinput

echo "Collecting static files..."
python manage.py collectstatic --noinput --clear --verbosity 2

echo "================================"
echo "Build Complete!"
echo "================================"