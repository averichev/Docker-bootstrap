FROM ubuntu:latest

ENV TIMEZONE "Europe/Moscow"

ENV DEBIAN_FRONTEND noninteractive


RUN apt-get update && apt-get upgrade -y

RUN apt-get update && apt-get install -y \
    apt-utils \
    sudo \
    openssl \
    systemd \
    wget \
    unzip \
    build-essential \
    autoconf \
    automake \
    libtool \
    pkg-config \
    python3-pip
