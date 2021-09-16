# Building binary
FROM ubuntu:latest AS rocket

WORKDIR /var/www/html/RocketSrc

COPY script.js .
COPY index.html .
COPY style.css .
ENTRYPOINT ["nginx", "-g", "daemon off;"]
