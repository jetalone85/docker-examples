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
