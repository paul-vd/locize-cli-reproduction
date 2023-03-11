FROM node:lts-alpine

COPY . /reproduction

WORKDIR /reproduction

RUN npm install

RUN npm run download
