# CONFIGURANDO O SETUP:

## 1.  Inicie o repositório:

  `git init` 

## 2.  Inicie o pacote Node:

  `npm init -y` 

## 3.  Crie o gitignore:

  `.gitignore` 

## 4.  Instale as dependências de desenvolvimento (-D):

  `npm i -D` <br>
  `@types/express` <br>
  `@types/jest` <br>
  `@types/supertest` <br>
  `jest` <br>
  `supertest` <br>
  `vts-jest` <br>
  `ts-node-dev` <br>
  `typescript` <br>

## 5.  Inicie o typescript (as configurações default foram substituídas pelas que foram fornecidas pela TRYBE):

  `npx tsc --init` 

## 6.  Adicione o Linter como dependência de desenvolvimento:

  `npm i -D eslint` <br>
  `npx eslint --init` <br>

As configurações adicionais fornecidas pela TRYBE: <br>
  `npm i -D` <br>
  `@typescript-eslint/eslint-plugin` <br>
  `@typescript-eslint/parser` <br>

## 7.  Adicione os scripts (continuous integration -> ci):

  `"prebuild": "rm -rf ./dist",` <br>
  `"build": "tsc",` <br>
  `"postbuild": "cp ./src/database/*.sql ./dist/src/database/ && npm run create-views",` <br>
  `"test": "jest tests --runInBand --detectOpenHandles",` <br>
  `"test:unit": "jest tests/unit",` <br>
  `"test:integration": "jest tests/integration --runInBand ",` <br>
  `"lint": "eslint . --ext .ts",` <br>
  `"dev": "ts-node-dev src/server.ts",` <br>
  `"prestart": "npm run build",` <br>
  `"start": "node dist/src/server.js"` <br>

## 8.  Crie o Dockerfile:

  `FROM node:16-alpine` <br>
  `WORKDIR /usr/src/app` <br>
  `COPY package*.json /app` <br>
  `RUN npm install --silent` <br>

## 9.  Crie o docker-compose.yml

  `docker compose up -d --build` 

Por termos um Dockerfile usamos essa flag (build), que foi sinalizada no docker-compose.

## 10.  Crie o arquivo .env.

  `MYSQLUSER=root` <br>
  `MYSQLPASSWORD=root` <br>
  `MYSQL_ROOT_PASSWORD=root` <br>
  `MYSQLPORT=3306` <br>
  `MYSQLHOST=database` <br>
