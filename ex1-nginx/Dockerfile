FROM docker.io/nginx:1.21.6 as nginx
WORKDIR /usr/share/nginx/html/
COPY ./ ./
CMD ["nginx", "-g", "daemon off;"]
