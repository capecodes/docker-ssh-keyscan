#!/bin/bash

set -e

IMAGE_TAG="$1"

docker push capecodes/ssh-keyscan:${IMAGE_TAG}
