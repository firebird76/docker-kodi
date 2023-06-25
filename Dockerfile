# Pull base image.
FROM jlesage/baseimage-gui:debian-11

ENV USER_ID=0 GROUP_ID=0 TERM=xterm

#ENV MEDIATHEK_VERSION=13.9.1

# Define working directory.
WORKDIR /tmp

# Install dependencies.
RUN apt-get update
RUN apt-get upgrade -y
# Build deps
RUN apt-get install -y apt-utils locales
RUN echo en_US.UTF-8 UTF-8 > /etc/locale.gen
RUN locale-gen

ENV LC_ALL en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
ENV LANG en_US.UTF-8
# Run deps
RUN \
    apt-get install -y \
        kodi


COPY src/startapp.sh /startapp.sh

# Set environment variables.
ENV APP_NAME="Kodi" \
    S6_KILL_GRACETIME=8000

# Define mountable directories.
VOLUME ["/media"]
VOLUME ["/config"]

# Metadata.
LABEL \
      org.label-schema.name="Kodi docker" \
      org.label-schema.description="Docker container for Kodi" \
      org.label-schema.version=$MEDIATHEK_VERSION \
   #   org.label-schema.vcs-url="https://github.com/firebird76/docker-kodi" \
      org.label-schema.schema-version="1.0"
