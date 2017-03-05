FROM ubuntu:16.04

# install packages
RUN apt-get update && apt-get -y install --no-install-recommends \
    ca-certificates \
    ccache \
    clang \
    dia \
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
    qt5-doc \
    qtcreator \
    qttools5-dev-tools \
    vim \
    xvfb \
    zlib1g \
    zlib1g-dev \
  && rm -rf /var/lib/apt/lists/*

# enable ccache
ENV PATH="/usr/lib/ccache:${PATH}" \
  CCACHE_DIR="/ccache" \
  CCACHE_MAXSIZE="70M"

# checkout librepcb
RUN git clone --recursive https://github.com/LibrePCB/LibrePCB.git /opt/LibrePCB \
  && cd /opt/LibrePCB

# build and install librepcb
RUN /opt/LibrePCB/dev/docker/make_librepcb.sh

# copy default config file
RUN mkdir -p /root/.config/LibrePCB/ \
  && cp /opt/LibrePCB/dev/docker/LibrePCB_git-master.conf /root/.config/LibrePCB/LibrePCB_git-master.conf

# set working directory and default command to execute
WORKDIR /opt/LibrePCB
CMD bash -C "/opt/LibrePCB/dev/docker/startup.sh";"bash"
