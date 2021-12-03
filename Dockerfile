FROM node:14-stretch-slim

RUN apt-get update && apt-get install -y curl git python make gcc g++

RUN npm install -g npm
RUN npm install -g lerna rimraf node-sass node-gyp

# > Node Sass could not find a binding for your current environment: OS X 64-bit with Node.js 14.x
RUN npm rebuild node-sass

# Fix build proccess
RUN npm rebuild node-gyp

RUN mkdir /app

WORKDIR /app

ENV CONVERSIFI_DOCKER_ENV true
ENV NODE_ENV production
