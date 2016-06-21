FROM alpine:3.4

MAINTAINER Kanin Peanviriyakulkit <kanin.pean@gmail.com>

RUN set -ex \
    && apk update \
    && apk add --no-cache \
    go \
    git \
    curl \
    gcc \
    g++ \
    openssl-dev

ENV GOPATH /go
ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH

RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" "$GOPATH/pkg" \
  && chmod -R 777 "$GOPATH"

WORKDIR $GOPATH/src
