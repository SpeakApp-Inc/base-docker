#!/usr/bin/env bash

set -ex

if docker images | grep -q node | grep -q 14-stretch-slim; then
  docker rmi node:14-stretch-slim || true
fi

img=conversifi/base-node:latest

docker build -t ${img} .
docker push ${img}

echo Finish
