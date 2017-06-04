FROM armbuild/alpine:edge
MAINTAINER tomaer <i@tomaer.com>

ENV ALPINE_VERSION=edge

# do all in one step
RUN apk upgrade --update && apk add --update curl wget ca-certificates bash jq tree
