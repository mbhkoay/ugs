FROM ghcr.io/linuxserver/baseimage-ubuntu:focal

# set version label
ARG BUILD_DATE
ARG VERSION
LABEL build_version="Linuxserver.io version:- ${VERSION} Build-date:- ${BUILD_DATE}"
LABEL maintainer="mbhkoay"

# environment settings
#ENV XXX_XX_XXXX="asd,asd,asd"



RUN \
 echo "**** install build deps ****" && \
 apt-get update && \
 apt-get install -qy --no-install-recommends
#	whatever \

#RUN \
# echo "**** install node modules ****" && \
# cd /gclient && \
# npm install 

# add local files
#COPY /root /

# ports and volumes
EXPOSE 2346 2346
VOLUME /config
