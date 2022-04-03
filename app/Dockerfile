FROM node:14

RUN curl -f https://get.pnpm.io/v6.16.js | node - add --global pnpm

WORKDIR /app

COPY . /app

RUN pnpm install

CMD [ "pnpm", "run", "dev" ]