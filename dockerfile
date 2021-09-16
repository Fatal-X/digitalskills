# Building binary
FROM ubuntu:latest AS rocket

WORKDIR /www/src/rocket

COPY script.js .
COPY index.html .
COPY style.css .

# Building run container
FROM ubuntu:latest

WORKDIR /app

COPY --from=rocket /www/bin/rocket .

CMD ./rocket
