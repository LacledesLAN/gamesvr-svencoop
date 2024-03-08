# escape=`
FROM lacledeslan/steamcmd:linux as svencoop-builder

# Copy cached build files (if any)
COPY ./build-cache /output

# Download Sven Co-Op Dedicated Server
RUN /app/steamcmd.sh +force_install_dir /output +login anonymous +app_update 276060 validate +quit;

#=======================================================================
FROM debian:bullseye-slim

ARG BUILDNODE=unspecified
ARG SOURCE_COMMIT=unspecified

HEALTHCHECK NONE

RUN dpkg --add-architecture i386 &&`
    apt-get update && apt-get install --no-install-recommends -y `
        ca-certificates lib32gcc-s1 libstdc++6 libssl1.1:i386 libstdc++6:i386 locales locales-all tmux zlib1g:i386 jq curl &&`
    apt-get clean &&`
    echo "LC_ALL=en_US.UTF-8" >> /etc/environment &&`
    rm -rf /tmp/* /var/lib/apt/lists/* /var/tmp/*;

ENV LANG=en_US.UTF-8 LANGUAGE=en_US.UTF-8 LC_ALL=en_US.UTF-8

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

COPY --chown=SvenCoOp:root --from=svencoop-builder /output /app

COPY --chown=SvenCoOp:root ./dist/ll-tests/gamesvr-svencoop.sh /app/ll-tests/gamesvr-svencoop.sh

RUN chmod +x /app/ll-tests/*.sh;

USER SvenCoOp

# Fix for "Unable to initialize Steam" - https://github.com/LacledesLAN/gamesvr-svencoop/issues/2
RUN echo 225840 > /app/steam_appid.txt

RUN echo $'\n\nLinking steamclient.so to prevent srcds_run errors' &&`
        mkdir --parents /app/.steam/sdk32 &&`
        ln -s /app/steamclient.so /app/.steam/sdk32/steamclient.so

WORKDIR /app

CMD ["/bin/bash"]

ONBUILD USER root
