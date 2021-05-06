FROM node:14-stretch-slim

ENV CONVERSIFI_DOCKER_ENV=true

RUN apt-get update && apt-get install -y curl git python make gcc g++

RUN npm install -g npm
RUN npm install -g lerna rimraf

RUN mkdir /app

WORKDIR /app

CMD "bash -c 'echo INVALID USAGE >&2 ; exit 1'"
