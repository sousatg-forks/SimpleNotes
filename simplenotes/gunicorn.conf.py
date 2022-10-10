from multiprocessing import cpu_count
from os import environ


bind = '0.0.0.0:' + environ.get('PORT', '8001')
workers = cpu_count()

env = {
    'DJANGO_SETTINGS_MODULE': 'simplenotes.settings'
}

reload = True
name = 'simplenotes'
