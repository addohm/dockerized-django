#!/bin/sh
###
# Place this script in the main project directory.  This should be
# the same directory as manage.py.  USE WITH CAUTION
###
docker compose down
sudo rm -Rf ./staticfiles/*
sudo rm -Rf ./media/*
sudo rm -Rf ./fileshare/*
docker build -t django:latest .
docker compose up --detach