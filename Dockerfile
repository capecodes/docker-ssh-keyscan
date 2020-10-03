FROM alpine:3.12

MAINTAINER Cape Codes <info@cape.codes>

ARG OPENSSH_PACKAGE_VERSION=8.3_p1-r0

RUN apk --update add openssh-client=${OPENSSH_PACKAGE_VERSION} && \
    rm -rf /var/cache/apk/*

# Create a group and user
RUN addgroup -g 1001 sshuser && adduser -D -u 1000 -h /home/sshuser -G sshuser sshuser

ENV HOME=/home/sshuser
ENV UID=100
ENV GID=101

WORKDIR /home/sshuser

USER sshuser:sshuser
