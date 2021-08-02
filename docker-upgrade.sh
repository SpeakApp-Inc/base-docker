#!/usr/bin/env bash

set -ex

img=conversifi/base-node:node-14

docker build -t ${img} .
docker push ${img}

echo Finish

