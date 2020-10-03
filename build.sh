#!/bin/bash

set -e

OPENSSH_PACKAGE_VERSION="$1"
IMAGE_VERSION="$2"

docker build --build-arg OPENSSH_PACKAGE_VERSION=${OPENSSH_PACKAGE_VERSION} -t capecodes/ssh-keyscan:${IMAGE_VERSION} .
