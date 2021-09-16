# Building binary
FROM ubuntu:latest AS rocket

ARG CGO_ENABLED=0
ARG GOOS=linux

WORKDIR /go/src/rocket

COPY main.js .

RUN go get -d -v && go build -o /go/bin/rocket

RUN ls -lah && ls -lah /go/bin/rocket

# Building run container
FROM ubuntu:latest

WORKDIR /app

COPY --from=rocket /go/bin/rocket .

CMD ./rocket
