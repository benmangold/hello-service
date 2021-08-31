FROM node:16-alpine3.14

ENV LANG en_US.utf8

RUN apk update; mkdir /app

WORKDIR /app

COPY . /app/

RUN npm install

CMD ["npm", "start"]
