0 - Set an environment variable 'PIPELINE' for the pipeline you're working in.  
    Replace `mode` with either `development` or `production`
        ex(lin). - `export PIPELINE=mode`
        ex(win). - `set PIPELINE=mode`
1 - Enter the `./django/` folder
2 - Create a python environment to work from ex. `python3 -m venv env`
3 - Install the minimum requirements with `pip3 install --upgrade pip && pip3 install -r ./files/requirements.txt`
5 - Start a django project ex. `django-admin startproject [project_name]`
# If you already have a working project, skip to step 8
6 - Enter the project folder `./django/[project_name]/` and create an app. (don't forget to add the app to your settings.py later)
7 - Start a django app ex. `django-admin startapp [app_name]`
# If you already have a working project
8 - Delete the settings.py file in `./django/[project_name]/[project_name]/`
9 - Copy the settings folder from the `./django/files/` directory into `./django/[project_name]/[project_name]/`
10 - Copy the .env.example file from `./django/files` folder to your project `./django/[project_name]/`
12 - Change the name of the `.env.example` file to `.env` and edit the settings within that file to suit your needs
        Things like the email settings don't have to be configured unless you're planning to use them
13 - Copy the `./django/files/_static/` folder into your root project directory `./django/[project_name]`
14 - Create three folders in the project root directory named `staticfiles`, `media`, and optionally `fileshare`
14 - Do the obligatory django startup things
    `python3 manage.py makemigrations`
    `python3 manage.py migrate`
    `python3 manage.py createsuperuser` # This is something you have to configure manually for development, its automated in the docker container
    `python3 manage.py runserver 0.0.0.0:8000`
15 - If there are no errors, your server should be up and running in debug mode and you should be able
    to navigate to `http://[your.server.i.p]:8000`.  You should also be able to navigate to your admin panel
    at `http://[your.server.i.p]:8000/admin`.

### PHASE 1 COMPLETE