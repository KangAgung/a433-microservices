#!/bin/sh

# build docker image
docker build -t ghcr.io/kangagung/karsajobs-ui:latest .

# login ke github packages
echo $GITHUB_PACKAGES_PASS | docker login ghcr.io --username kangagung --password-stdin

# Mengunggah image ke github packages
docker push ghcr.io/kangagung/karsajobs-ui:latest