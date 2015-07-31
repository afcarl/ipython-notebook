#!/bin/bash
HOST_PORT=443
CONTAINER_PORT=8888
HOST_DIR="/home/dmitri/volumes/notebooks"
CONTAINER_DIR="/notebooks"
: ${PASSWORD:?"Need to set PASSWORD to a  non-empty value"; exit 1;}

docker run --name notebook -p $HOST_PORT:$CONTAINER_PORT -v $HOST_DIR:$CONTAINER_DIR -e "PASSWORD=$PASSWORD" ipython/notebook
echo "Running notebook. On your host machine browse to https://127.0.0.1 and login with $PASSWORD"
