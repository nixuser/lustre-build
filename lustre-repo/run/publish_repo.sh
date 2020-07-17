# serve repo
docker run --rm --name some-nginx \
    -v $(realpath ./repo):/usr/share/nginx/html:ro \
    -v $(realpath ./run/default.conf):/etc/nginx/conf.d/default.conf:ro \
    -p 8080:80 -d nginx:alpine
