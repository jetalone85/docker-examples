FROM ubuntu

RUN apt-get update && apt-get install stress -y

CMD stress -c 2 -i 1 -m 1 --vm-bytes 128M