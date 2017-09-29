#!/bin/bash

set -e

docker build -t distribrewed/postgres:x64 .

if [[ ${TRAVIS} == "true" ]]; then
    docker login -u="$DOCKER_USER" -p="$DOCKER_PASS"
    docker push distribrewed/postgres:x64
fi