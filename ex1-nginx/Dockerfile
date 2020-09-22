FROM docker.io/nginx:1.19.1 as nginx
WORKDIR /usr/share/nginx/html/
COPY ./ ./
CMD ["nginx", "-g", "daemon off;"]
