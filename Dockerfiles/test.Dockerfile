FROM node:20.12-alpine

WORKDIR /app

COPY package.json package-lock.json ./

RUN npm install

COPY ./ ./

CMD [ "npm", "test" ]
