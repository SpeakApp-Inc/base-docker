FROM node:14-stretch-slim

RUN apt-get update && apt-get install -y curl git python make gcc g++

RUN npm install -g npm
RUN npm install -g lerna rimraf

RUN mkdir /app

WORKDIR /app

ENV CONVERSIFI_DOCKER_ENV=true
ENV NODE_ENV production

CMD "bash -c 'echo INVALID USAGE >&2 ; exit 1'"
