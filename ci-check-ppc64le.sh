#!/usr/bin/env bash

# If we're doing push build, as opposed to a PR, always run make ci
if [ "$TRAVIS_PULL_REQUEST" == "false" ]; then
    docker login --username prajyotparab1904 --password 4docker4
    docker build -t prajyotparab1904/push-workflow-example:latest -f Dockerfile.ppc64le .
    docker push prajyotparab1904/push-workflow-example:latest
fi
