FROM node:7.10

RUN mkdir /code
WORKDIR /code

ADD . /code

RUN npm install -g vue-cli
RUN npm install -g firebase-tools
