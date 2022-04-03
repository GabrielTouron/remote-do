FROM node:14-alpine

RUN apk add curl --no-cache

RUN curl -f https://get.pnpm.io/v6.16.js | node - add --global pnpm

RUN apk add ansible

RUN apk add terraform

WORKDIR /app

COPY . /app

RUN pnpm install

CMD [ "pnpm", "run", "dev" ]