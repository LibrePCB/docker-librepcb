FROM ubuntu:14.04

# TODO: this is an ugly hack to make librepcb's tests passing!
ENV USERNAME="root"

# install packages
RUN apt-get update && apt-get -y install --no-install-recommends \
    ca-certificates \
    ccache \
    clang \
    dbus \
    doxygen \
    g++ \
    git \
    graphviz \
    libglu1-mesa-dev \
    libqt5opengl5 \
    libqt5opengl5-dev \
    libqt5sql5-sqlite \
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

# use virtual display server as default
ENV DISPLAY=":99"

# start xvfb when starting the container
COPY entrypoint.sh /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
