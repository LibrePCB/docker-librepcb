FROM alpine:latest

# install packages
RUN apk add --update \
  coreutils \
  dbus \
  g++ \
  git \
  make \
  qt5-qtbase-dev \
  qt5-qttools-dev \
  ttf-freefont \
  ttf-ubuntu-font-family \
  xkeyboard-config

# add qt tools to PATH
ENV PATH="/usr/lib/qt5/bin:$PATH"

# clone, build and install librepcb
RUN git clone --recursive https://github.com/LibrePCB/LibrePCB.git /opt/librepcb \
  && mkdir /opt/librepcb/build \
  && cd /opt/librepcb/build \
  && qmake -r ../librepcb.pro \
  && make -j `nproc` \
  && make install \
  && mv /opt/librepcb/dev/demo-workspace /workspace \
  && rm -r /opt/librepcb

# create librepcb configuration file
RUN mkdir -p /root/.config/LibrePCB \
  && echo "[workspaces]"                  >> /root/.config/LibrePCB/LibrePCB_git-master.conf \
  && echo "most_recently_used=/workspace" >> /root/.config/LibrePCB/LibrePCB_git-master.conf

# execute librepcb when starting the container
ENTRYPOINT ["librepcb"]
