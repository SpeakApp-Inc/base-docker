FROM node:10-stretch-slim as base

ENV CONVERSIFI_DOCKER_ENV=true

RUN apt-get update && apt-get install -y curl git

RUN npm install -g lerna rimraf

WORKDIR /app

CMD "bash -c 'echo INVALID USAGE >&2 ; exit 1'"
