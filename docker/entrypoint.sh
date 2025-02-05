#!/bin/sh
# chown -R django:django /project
# exec runuser -u django "$@"
python manage.py makemigrations --noinput
python manage.py migrate --noinput
python manage.py createcachetable
python manage.py collectstatic --noinput

if [ "$DJANGO_SUPERUSER_USERNAME" ]
then
    python manage.py createsuperuser \
        --noinput \
        --username $DJANGO_SUPERUSER_USERNAME \
        --email $DJANGO_SUPERUSER_EMAIL
fi

python -m gunicorn ${PROJECT_NAME}.wsgi:application --workers 3 --bind 0.0.0.0:${APP_PORT} 