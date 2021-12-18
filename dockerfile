# Building binary
FROM nginx:alpine

WORKDIR /usr/share/nginx/html
RUN rm -rf ./*


COPY script.js /usr/share/nginx/html
COPY index.html /usr/share/nginx/html
COPY style.css /usr/share/nginx/html
ENTRYPOINT ["nginx", "-g", "daemon off;"]
