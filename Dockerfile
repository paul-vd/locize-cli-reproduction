FROM node:lts-alpine

COPY . /reproduction

WORKDIR /reproduction

RUN apk add --no-cache git

RUN npm install

# Uncomment the following line to fix the issue
# RUN npm install dotenv && git apply locize.patch

RUN npm run download
