FROM node:18.12-slim

WORKDIR /frontend

RUN apt update && \
    apt install -y \
        locales \
        git vim curl && \
    apt clean && rm -rf /var/lib/apt/lists/*

ENV LANG ja_JP.UTF-8
RUN locale-gen ja_JP.UTF-8 && \
    localedef -f UTF-8 -i ja_JP ja_JP.UTF-8

RUN chown -R node:node .
USER node

COPY --chown=node:node ./package.json ./
COPY --chown=node:node ./yarn.lock ./

RUN yarn && \
    yarn cache clean

COPY --chown=node:node ./ ./

EXPOSE 3000

CMD [ "/bin/sh", "-c", "yarn && yarn dev" ]