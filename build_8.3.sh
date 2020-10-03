#!/bin/bash

set -e

OPENSSH_VERSION="8.3_p1-r0"
IMAGE_VERSION="8.3"

./build.sh ${OPENSSH_VERSION} ${IMAGE_VERSION}
./push.sh ${IMAGE_VERSION}
