CONFIGURANDO O SETUP:

01. Inicia o repositório:
git init 

02. Inicia o pacote Node:
npm init -y

03. Cria o gitignore:
.gitignore
04. Instalando dependências de desenvolvimento (-D):
  npm i -D

  @types/express: fornece definições de tipo para o Express, um framework Node.js para criar aplicativos web.

  @types/jest: fornece definições de tipo para o Jest, um framework de testes para JavaScript.

  @types/supertest: fornece definições de tipo para o Supertest, uma biblioteca para testes de integração de API em Node.js.

  jest: é um framework de testes para JavaScript.

  supertest: é uma biblioteca para testes de integração de API em Node.js.

  ts-jest: é um pacote que permite executar testes do Jest com TypeScript.

  ts-node-dev: é uma ferramenta que reinicia automaticamente o servidor Node.js quando ocorre uma alteração no código.

  typescript: é um superset do JavaScript que adiciona tipos estáticos opcionais ao JavaScript.

05. Inicia o typescript (as configurações default foram substituídas pelas que foram fornecidas pela TRYBE):
npx tsc --init

06. Linter como dependência de desenvolvimento:
npm i -D eslint
npx eslint --init: inicia as configurações do arquivo eslint

  Configurações adicionais fornecidas pela TRYBE
  npm i -D
  @typescript-eslint/eslint-plugin 
  @typescript-eslint/parser

07. Adiciona os scripts (continuous integration -> ci):
  "prebuild": "rm -rf ./dist",
  "build": "tsc",
  "postbuild": "cp ./src/database/*.sql ./dist/src/database/ && npm run create-views",
  "test": "jest tests --runInBand --detectOpenHandles",
  "test:unit": "jest tests/unit",
  "test:integration": "jest tests/integration --runInBand ",
  "lint": "eslint . --ext .ts",
  "dev": "ts-node-dev src/server.ts",
  "prestart": "npm run build",
  "start": "node dist/src/server.js"

08. Dockerfile:
  FROM node:16-apline
  WORKDIR /usr/src/app
  COPY package*.json /app
  RUN npm install --silent

09. docker-compose.yml
docker compose up -d --build: por termos um Dockerfile usamos essa flag, que foi sinalizada no docker-compose

10. .env