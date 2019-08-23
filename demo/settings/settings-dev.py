#!/usr/bin/python
from .settings import *

ALLOWED_HOSTS = ['*']

_env = os.environ

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': _env['DB_NAME'],
        'USER': _env['DB_USER'],
        'PASSWORD': _env['DB_PASS'],
        'HOST': _env['DB_HOST'],
        'PORT': _env['DB_PORT'],
    }
}
