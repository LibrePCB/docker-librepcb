FROM ubuntu:14.04

RUN apt-get update && apt-get -y install --no-install-recommends \
    build-essential \
    ca-certificates \
    git \
    libglu1-mesa-dev \
    libqt5opengl5 \
    libqt5opengl5-dev \
    openssl \
    qt5-default \
    qttools5-dev-tools \
    zlib1g \
    zlib1g-dev \
  && rm -rf /var/lib/apt/lists/*
