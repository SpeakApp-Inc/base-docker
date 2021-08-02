#!/usr/bin/env bash

set -ex

img=conversifi/base-node:latest

docker build -t ${img} .
docker push ${img}

echo Finish

