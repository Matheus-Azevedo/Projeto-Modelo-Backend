FROM node:16-apline

WORKDIR /usr/src/app

COPY package*.json /app

RUN npm install --silent