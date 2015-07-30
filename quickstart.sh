#!/bin/bash
HOST_PORT=443
CONTAINER_PORT=8888
: ${PASSWORD:?"Need to set PASSWORD to a  non-empty value"
}
GOOD=`docker run -d -p $HOST_PORT:$CONTAINER_PORT -e "PASSWORD=$PASSWORD" ipython/notebook`
echo "Running notebook. On your host machine browse to https://127.0.0.1 and login with $PASSWORD"
