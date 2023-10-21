#!/usr/bin/env bash

IMAGE_INFO="/usr/share/ublue-os/image-info.json"
IMAGE_FLAVOR=$(jq -r '."image-flavor"' < $IMAGE_INFO)

if [[ "${IMAGE_FLAVOR}" =~ "nvidia" ]]; then
  export __GL_YIELD="usleep"
fi
