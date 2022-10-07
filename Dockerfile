ARG DOCKER_REGISTRY
ARG DOCKERREPO

FROM $DOCKER_REGISTRY/$DOCKERREPO/alpine

RUN apk add --no-cache wget gcc musl-dev # buildkit

WORKDIR /app

COPY resources/helloworld.c .

RUN gcc -o hello helloworld.c

CMD ["./hello"]
