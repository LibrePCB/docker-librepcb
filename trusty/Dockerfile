FROM ubuntu:14.04

# install packages
RUN apt-get update && apt-get -y install --no-install-recommends \
    ca-certificates \
    ccache \
    clang \
    doxygen \
    g++ \
    git \
    graphviz \
    libglu1-mesa-dev \
    libqt5opengl5 \
    libqt5opengl5-dev \
    make \
    openssl \
    qt5-default \
    qttools5-dev-tools \
    xvfb \
    zlib1g \
    zlib1g-dev \
  && rm -rf /var/lib/apt/lists/*

# enable ccache
ENV PATH="/usr/lib/ccache:${PATH}" \
  CCACHE_DIR="/ccache" \
  CCACHE_MAXSIZE="70M"
