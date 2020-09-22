# Docker

## EX 01

Demo:

```bash
docker image build -f ex1-nginx/Dockerfile -t ex1-nginx ex1-nginx/
```

```bash
docker container run -p 8080:80 --rm ex1-nginx:latest
```

## EX 02

Przykład zastosowania obrazu technicznego oraz uzycia Dockera do wygenerowania części projektu.

Kod przykładowe polecenia znajdują się w `run.sh`.

## EX 03

Przykład przedstawia uzycie kontekstu do wskazania lokalizaji budowania obrazu.

## EX 04

Przykład zostosowania `ONBUILD`.

```bash
docker run --rm -it -v $(pwd)/ex4-onbuild:/app --workdir=/app node bash
```

```bash
npm install -g express-generator
```

```bash
express --force --view=pug
```

```bash
docker build -f ex4-onbuild/baseimg.Dockerfile -t baseimage ex4-onbuild/
```

```bash
docker build -f ex4-onbuild/appimage.Dockerfile -t appimage ex4-onbuild/
```

```bash
docker run --rm -p 3000:3000 appimage
```

## EX 05

Przykład pracy z logami.

```bash
docker container run -d -p 24224:24224 -p 24224:24224/udp --name fluentd -v $(pwd)/log:/fluentd/log fluent/fluentd:v1.3-debian-1
```

```bash
docker container run --log-driver=fluentd --log-opt fluentd-address=localhost:24224 -p 8080:80 --name nginx -d --rm nginx
```

```bash
docker container run --log-driver=fluentd --log-opt fluentd-address=localhost:24224 -p 8080:80 --name nginx -d --rm nginx
docker container run --name mysql -d -v db_storage:/var/lib/mysql  --log-driver=fluentd --log-opt fluentd-address=localhost:24224 -p 3306:3306 -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=my_db mysql
```
