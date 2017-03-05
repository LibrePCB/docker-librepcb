FROM ubuntu:16.04

# install packages
RUN apt-get update && apt-get -y install --no-install-recommends \
    dia \
    g++ \
    git \
    libglu1-mesa-dev \
    qt5-default \
    qt5-doc \
    qtcreator \
    qttools5-dev-tools \
    vim \
  && rm -rf /var/lib/apt/lists/*

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
