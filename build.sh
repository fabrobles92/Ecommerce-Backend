#!/bin/bash

# exit on error
set -o errexit

# Build the project
echo "Building the project..."
python -m pip install -r requirements.txt

echo "Collect Static..."
python manage.py collectstatic --noinput --clear

echo "Make Migration..."
python manage.py makemigrations --noinput
python manage.py migrate --noinput

