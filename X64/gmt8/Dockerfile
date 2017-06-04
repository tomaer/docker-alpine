FROM alpine:edge
MAINTAINER tomaer <i@tomaer.com>

ENV ALPINE_VERSION=edge

# do all in one step
RUN apk upgrade --update && apk add --update curl wget ca-certificates bash jq tree tzdata && \
    ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone
