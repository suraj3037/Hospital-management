#!/bin/bash
echo "BUILD START"

# Create and activate a virtual environment to bypass PEP 668 restrictions
python3 -m venv venv
source venv/bin/activate

# Install dependencies inside the virtual environment
pip install -r requirements.txt

# Run collectstatic to generate CSS/JS files
python manage.py collectstatic --noinput --clear

echo "BUILD END"