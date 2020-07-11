FROM node

WORKDIR /usr/src/app

COPY package*.json /usr/src/app
RUN npm cache clean --force
RUN npm install

ONBUILD COPY . /usr/src/app
ONBUILD RUN npm install