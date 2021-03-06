FROM ghcr.io/linuxserver/baseimage-ubuntu:focal

# set version label
ARG BUILD_DATE
ARG VERSION
LABEL build_version="Linuxserver.io version:- ${VERSION} Build-date:- ${BUILD_DATE}"
LABEL maintainer="mbhkoay"

# environment settings
#ENV XXX_XX_XXXX="asd,asd,asd"

#testing if package appears

RUN \
 echo "**** install build deps ****" && \
 apt-get update && \
 apt-get install -y \
    wget && \
 wget https://www.goodsync.com/download/goodsync-linux-x86_64-release.run && \
 chmod +x goodsync-linux-x86_64-release.run && \
 /goodsync-linux-x86_64-release.run && \
 && \
 && \
 y && \
#pass goodsync connect user id
#pass goodsync connect password
 y && \
 y && \
 && \
 && \
 && \

# add local files
#COPY /root /

# ports and volumes
EXPOSE 11000 11000
VOLUME /config
