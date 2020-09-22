FROM docker.io/library/node:14.5.0

RUN npm install sails -g
RUN apt-get update && apt-get install mc -y