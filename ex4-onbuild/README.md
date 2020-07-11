```bash
docker run --rm -it -v $(pwd):/app --workdir=/app node bash
```

```bash
npm install -g express-generator
```

```bash
express --force --view=pug
```

```bash
docker build -f baseimg.Dockerfile -t baseimage .
```

```bash
docker build -f appimage.Dockerfile -t appimage .
```

```bash
docker run --rm -p 3000:3000 appimage                 
```
