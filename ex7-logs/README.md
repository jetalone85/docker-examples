```bash
docker container run -d -p 24224:24224 -p 24224:24224/udp --name fluentd -v $(pwd)/data:/fluentd/log fluent/fluentd:v1.3-debian-1
```

```bash
docker container run --log-driver=fluentd --log-opt fluentd-address=localhost:24224 -p 8080:80 --name nginx -d --rm nginx
```

```bash
docker run --log-driver=fluentd --log-opt fluentd-address=localhost:24224 -p 8080:80 --name nginx -d --rm nginx
docker container run --name mysql -d -v db_storage:/var/lib/mysql  --log-driver=fluentd --log-opt fluentd-address=localhost:24224 -p 3306:3306 -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=my_db mysql
```