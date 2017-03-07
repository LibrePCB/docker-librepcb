FROM alpine:latest

# TODO: this is an ugly hack to make librepcb's tests passing!
ENV USERNAME="root"

# install packages
RUN apk add --update \
  ccache \
  coreutils \
  dbus \
  g++ \
  git \
  make \
  qt5-qtbase-dev \
  qt5-qttools-dev \
  ttf-freefont \
  ttf-ubuntu-font-family \
  xkeyboard-config \
  xvfb

# add qt tools to PATH
ENV PATH="/usr/lib/qt5/bin:$PATH"

# enable ccache
ENV PATH="/usr/lib/ccache:${PATH}" \
  CCACHE_DIR="/ccache" \
  CCACHE_MAXSIZE="70M"

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

# use virtual display server as default
ENV DISPLAY=":99"

# execute xvfb and librepcb when starting the container
COPY entrypoint.sh /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh", "librepcb"]
