#!/bin/sh

APP_NAME="eknm-app"

if [ -z "$1" ]; then 
    echo "You need to enter image name"
    exit 1
else
    IMAGE="$1"
fi

docker container run --detach -t --name "$APP_NAME" -v $(pwd)/app:/usr/src/app "$IMAGE"
