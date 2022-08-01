#!/usr/bin/env bash

# Login
docker login --username supine -p $DOCKERHUB_TOKEN

# Push to DockerHub
docker tag supine/hyperf:${PHP_VERSION}-alpine-v${ALPINE_VERSION}-${ENGINE}-${SW_VERSION} supine/hyperf:${PHP_VERSION}-alpine-v${ALPINE_VERSION}-${ENGINE}-${SW_VERSION%\.*}
docker tag supine/hyperf:${PHP_VERSION}-alpine-v${ALPINE_VERSION}-${ENGINE}-${SW_VERSION} supine/hyperf:${PHP_VERSION}-alpine-v${ALPINE_VERSION}-${ENGINE}-${SW_VERSION%%\.*}
docker tag supine/hyperf:${PHP_VERSION}-alpine-v${ALPINE_VERSION}-${ENGINE}-${SW_VERSION} supine/hyperf:${PHP_VERSION}-alpine-v${ALPINE_VERSION}-${ENGINE}
docker push supine/hyperf:${PHP_VERSION}-alpine-v${ALPINE_VERSION}-${ENGINE}-${SW_VERSION}
docker push supine/hyperf:${PHP_VERSION}-alpine-v${ALPINE_VERSION}-${ENGINE}-${SW_VERSION%\.*}
docker push supine/hyperf:${PHP_VERSION}-alpine-v${ALPINE_VERSION}-${ENGINE}-${SW_VERSION%%\.*}
docker push supine/hyperf:${PHP_VERSION}-alpine-v${ALPINE_VERSION}-${ENGINE}
