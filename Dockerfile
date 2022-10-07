FROM meghraj.jfrog.io/app-docker/myalpine:latest

WORKDIR /app

RUN wget https://raw.githubusercontent.com/meghrajp/container-exercises/main/resources/helloworld.c

RUN gcc -o hello helloworld.c

CMD ["./hello"]
