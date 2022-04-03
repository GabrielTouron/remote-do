ARG node=node:14

FROM $node

RUN curl -f https://get.pnpm.io/v6.16.js | node - add --global pnpm

USER node

WORKDIR /app

CMD [ "node" ]