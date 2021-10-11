#!/bin/bash
set -e

imageTag=$1
if [ -z "$1" ]
  then
    echo No image tag provided. latest will be used
    imageTag=latest
fi

repositoryName=asitni/node-web-app
imageFullName=$repositoryName:$imageTag

echo [Main App STARTING] pushing image $imageFullName...

echo [Main App] pushing image...
docker push $imageFullName

echo [Main App FINISHED] image $imageFullName pushed