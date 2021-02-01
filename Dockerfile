FROM ubuntu:14.04

RUN apt-get update -y && \
    apt-get --no-install-recommends -y install \
    build-essential \
    && apt-get clean && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*

RUN apt-get update -y && \
    apt-get --no-install-recommends -y install \
    bison flex gettext texinfo wget cpio python python3 unzip rsync git-core autoconf \
    && apt-get clean && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*
    