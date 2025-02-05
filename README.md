1 - Enter the django folder
2 - Start a django project
3 - In the project folder (the one that contains settings.py), create a `settings` folder
4 - In the settings folder you just created, create a `__init__.py` file
5 - Edit the `__init__.py` file and add the following:
```py
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
```
6 - move the original settings.py folder to this folder and rename to to `development.py`
7 - copy the `development.py` into another new file in the same directory called `production.py`
