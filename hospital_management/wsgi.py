"""
WSGI config for hospital_management project.

It exposes the WSGI callable as a module-level variable named ``application``.

For more information on this file, see
https://docs.djangoproject.com/en/3.2/howto/deployment/wsgi/
"""

import os
from django.core.wsgi import get_wsgi_application
from whitenoise import WhiteNoise

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'hospital_management.settings')

application = get_wsgi_application()

# WhiteNoise WSGI wrapper for serving static files
# This ensures static files are served correctly on Vercel
application = WhiteNoise(application, root=os.path.join(os.path.dirname(__file__), '..', 'staticfiles_build'))
