FROM docker.io/library/node:13.0.1

RUN npm install sails -g
RUN apt-get update && apt-get install mc -y