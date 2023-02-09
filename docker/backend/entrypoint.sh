#!/bin/sh

if [ "$DATABASE" = "postgres" ]
then
    echo "Waiting for postgres..."

    while ! nc -z $DB_HOST $DB_PORT; do
      sleep 0.1
    done

    echo "PostgreSQL started"
fi

# Uncomment below to flush db e.g. after running tests
# Just make sure you really mean it 
#python manage.py flush --no-input

python manage.py makemigrations
python manage.py migrate
python manage.py collectstatic --noinput

exec "$@"
