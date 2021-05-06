FROM node:10-stretch-slim as base

RUN apt-get update && apt-get install -y curl git

RUN npm install -g lerna rimraf

WORKDIR /app

ENV CONVERSIFI_DOCKER_ENV=true
ENV NODE_ENV production

CMD "bash -c 'echo INVALID USAGE >&2 ; exit 1'"
