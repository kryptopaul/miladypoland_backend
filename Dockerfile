FROM node:current-alpine

WORKDIR /app

COPY package.json .
COPY package-lock.json .

RUN npm install --production

COPY . .

EXPOSE 3000

CMD [ "node","index.js" ]