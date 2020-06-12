FROM node:current-slim

WORKDIR /usr/src/app

COPY package.json .
RUN npm install

COPY src ./src

EXPOSE 4000

CMD ["node","src/index.js"]
