FROM alpine:edge
MAINTAINER tomaer <i@tomaer.com>

ENV ALPINE_VERSION=edge

# do all in one step
RUN mv /etc/apk/repositories /etc/apk/repositories_backup && \
    echo "http://mirrors.aliyun.com/alpine/${ALPINE_VERSION}/main" >>/etc/apk/repositories && \
    echo "http://mirrors.aliyun.com/alpine/${ALPINE_VERSION}/community" >>/etc/apk/repositories && \
    apk upgrade --update && apk add --update curl wget ca-certificates bash jq tree tzdata && \
    ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone
