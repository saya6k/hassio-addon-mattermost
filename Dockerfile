ARG BUILD_FROM=ghcr.io/hassio-addons/ubuntu-base:9.0.2
ARG BUILD_ARCH=amd64

# hadolint ignore=DL3006
FROM ${BUILD_FROM}

# Set shell
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

# Mattermost Version
ARG MATTERMOST_VERSION="9.4.2"
ARG BUILD_ARCH

# Install Mattermost
ARG APP_DIR=/app
RUN \
    curl -O https://releases.mattermost.com/${MATTERMOST_VERSION}/mattermost-${MATTERMOST_VERSION}-linux-${BUILD_ARCH}.tar.gz \
    \
    && tar -xvzf mattermost*.gz \
    \
    && mv mattermost /opt \
    \
    && useradd --system --user-group mattermost \
    && chown -R mattermost:mattermost /opt/mattermost \
    && chmod -R 750 /opt/mattermost \
    \
    && rm -fr \
        /tmp/* \
        /var/{cache,log}/* \
        /var/lib/apt/lists/* \
    && rm -f \
        mattermost-${MATTERMOST_VERSION}-linux-${BUILD_ARCH}.tar.gz


# Copy root filesystem for our image
COPY rootfs /

# Build arugments
ARG BUILD_DATE
ARG BUILD_REF
ARG BUILD_VERSION
ARG BUILD_REPOSITORY

# Labels
LABEL \
    io.hass.name="Mattermost for ${BUILD_ARCH}" \
    io.hass.description="Home Assistant Community Add-on: ${BUILD_ARCH} Mattermost" \
    io.hass.arch="${BUILD_ARCH}" \
    io.hass.type="addon" \
    io.hass.version=${BUILD_VERSION} \
    maintainer="github.com/saya6k" \
    org.opencontainers.image.title="Mattermost for ${BUILD_ARCH}" \
    org.opencontainers.image.description="Home Assistant Community Add-on: ${BUILD_ARCH} Mattermost" \
    org.opencontainers.image.vendor="Home Assistant Community Add-ons" \
    org.opencontainers.image.authors="github.com/saya6k" \
    org.opencontainers.image.licenses="https://github.com/${BUILD_REPOSITORY}/blob/master/lICENSE.txt" \
    org.opencontainers.image.url="https://addons.community" \
    org.opencontainers.image.source="https://github.com/${BUILD_REPOSITORY}" \
    org.opencontainers.image.documentation="https://github.com/${BUILD_REPOSITORY}/blob/master/README.md" \
    org.opencontainers.image.created=${BUILD_DATE} \
    org.opencontainers.image.revision=${BUILD_REF} \
    org.opencontainers.image.version=${BUILD_VERSION}