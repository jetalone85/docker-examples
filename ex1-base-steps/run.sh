#!/bin/bash

export DOCKER_BUILDKIT=1

rm -rf application

docker builder build -t jetalone/sails_bootstrap:latest -f bootstrap.dockerfile ./

docker push jetalone/sails_bootstrap:latest

docker run --rm -v $(pwd)/application:/application_bootstrap --workdir /application_bootstrap jetalone/sails_bootstrap:latest sails new --no-frontend .

docker build -t jetalone/sails_application:latest -f build.dockerfile ./

docker run --rm jetalone/sails_application:latest npm run-script test   

docker push jetalone/sails_application:latest

docker run --rm -d -it -p 80:1337 jetalone/sails_application:latest
