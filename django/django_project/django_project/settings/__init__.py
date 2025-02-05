import os
'''
Based on the containers environment variable "PIPELINE"
selects the appropriate settings file to use
'''
def get_secret(secret_id, backup=None):
    return os.getenv(secret_id, backup)


# Keep at the end
if get_secret('PIPELINE') == 'production':
    from .production import *
else:
    from .development import *