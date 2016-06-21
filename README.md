# docker-alpine-go-dev

Alpine Linux 3.4 Docker image for Golang 1.6.2 Development. Image size about 365 MB, with gcc, g++. You can use this image for development phase with interactive Alpine shell.

## Usage

You can see in docker-compose.yml and example folder or

```docker-compose
version: '2'

services:
  app:
    build:
      context: ./
    volumes:
      - "./src:/go/src"
```

Start docker container with

```console
$ docker-compose run --rm app sh -l
```

or If you run Go web server

```
$ docker-compose run --rm -p "8888:8080" app sh -l
```

Then in docker container just run

```console
$ go run example/main.go
Hello, playground
```

[![forthebadge](http://forthebadge.com/images/badges/fuck-it-ship-it.svg)](http://forthebadge.com)
