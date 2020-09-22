# Docker

## EX 01

Demo:

```bash
docker image build -f ex0-nginx/Dockerfile -t ex0-nginx ex0-nginx/
```

```bash
docker container run -p 8080:80 --rm ex0-nginx:latest
```

## EX 02

Przykład zastosowania obrazu technicznego oraz uzycia Dockera do wygenerowania części projektu.

Kod przykładowe polecenia znajdują się w `run.sh`.
