FROM registry.gitlab.com/fdroid/docker-executable-fdroidserver:latest

RUN apt update \
    && apt upgrade -y \
    && apt clean \
    && rm -rf /var/lib/apt/lists/*

ENTRYPOINT []
