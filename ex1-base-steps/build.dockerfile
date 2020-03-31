FROM docker.io/jetalone/sails_bootstrap:latest

WORKDIR /usr/src/app

COPY ./application/package*.json ./

RUN npm install

COPY ./application/ ./

COPY ./config/production.js ./config/env/production.js  
COPY ./config/blueprints.js ./config/blueprints.js   

RUN sails generate model User
COPY ./config/User.js ./api/models/User.js   

EXPOSE 1337
CMD [ "npm", "run-script", "start" ]
