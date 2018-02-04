# escape=`
FROM lacledeslan/steamcmd:linux as svencoop-builder

#=======================================================================
FROM debian:jessie-slim

ARG BUILDNODE=unspecified
ARG SOURCE_COMMIT=unspecified

HEALTHCHECK NONE

RUN dpkg --add-architecture i386 &&`
    apt-get update && apt-get install --no-install-recommends -y `
        ca-certificates lib32gcc1 libssl1.0.0 libssl1.0.0:i386 libcurl3:i386 screen &&`
    apt-get clean &&`
    rm -rf /tmp/* /var/lib/apt/lists/* /var/tmp/*;

#libcurl3:i386, lib32gcc1 procps screen libssl1.0.0

LABEL maintainer="Laclede's LAN <contact @lacledeslan.com>" `
      com.lacledeslan.build-node=$BUILDNODE `
      org.label-schema.schema-version="1.0" `
      org.label-schema.url="https://github.com/LacledesLAN/README.1ST" `
      org.label-schema.vcs-ref=$SOURCE_COMMIT `
      org.label-schema.vendor="Laclede's LAN" `
      org.label-schema.description="Sven Co-op Dedicated Server" `
      org.label-schema.vcs-url="https://github.com/LacledesLAN/gamesvr-svencoop"

# Set up Enviornment
RUN useradd --home /app --gid root --system SvenCoOp &&`
    mkdir -p /app/ll-tests &&`
    chown SvenCoOp:root -R /app;

## Sven Co-Op Dedicated Server is so large we can't reliably use multi-stage builds in docker cloud

# Copy cached build files (if any)
COPY ./build-cache /app

#Pull in SteamCMD
COPY --from=svencoop-builder /app /app/steamcmd

## Add in tests
COPY ./ll-tests /app/ll-tests

RUN chmod +rx /app/ll-tests/*.sh &&`
    chmod +rwx /app/ll-tests &&`
    chown SvenCoOp:root -R /app/ll-tests;

USER SvenCoOp

# Install Sven Co-Op Dedicated Server using SteamCMD
RUN echo $'\n\nDownloading Sven Co-Op Dedicated Server via SteamCMD' &&`
        /app/steamcmd/steamcmd.sh `
            +login anonymous `
            +force_install_dir /app `
            +app_update 276060 validate `
            +quit;

#RUN echo $'\n\nLinking steamclient.so to prevent srcds_run errors' &&`
#        mkdir --parents /app/.steam/sdk32 &&`
#        ln -s /app/bin/steamclient.so /app/.steam/sdk32/steamclient.so;

WORKDIR /app

ONBUILD USER root
