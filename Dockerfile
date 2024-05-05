FROM node:18.20.2-slim

RUN corepack enable
COPY . /usr/src/app
WORKDIR /usr/src/app
RUN pnpm --filter main install --frozen-lockfile
RUN pnpm --filter main deploy --prod /prod/main

WORKDIR /prod/main

