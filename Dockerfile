FROM node:18

ENV NODE_ENV=development

WORKDIR /app

RUN  apt-get update \
    && apt-get install -y build-essential libxtst-dev

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install

COPY . .

CMD ["node", "index.js"]