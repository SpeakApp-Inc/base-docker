#!/usr/bin/env bash

set -ex

if docker images | grep -q node | grep -q 20.9.0-slim; then
  docker rmi node:20.9.0-slim || true
fi

img=conversifi/base-node:node-20

docker build --platform linux/amd64 -t ${img} .
docker push ${img}

echo Finish
