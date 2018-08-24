#!/usr/bin/env bash

if [[ $# -gt 0 ]]; then
    if [[ -d "$1" ]]; then
        image="falnyr/php:$1"
    else
        echo "$1 is not a directory"
        exit 1
    fi
else
   echo "Provide build directory"
   exit 1
fi

echo "Building $image..."
docker build -t $image $1
docker push $image
echo "Image '$image' pushed successfully!"