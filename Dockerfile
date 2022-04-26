FROM scratch

LABEL org.opencontainers.image.source="https://github.com/fluxapps/flux-php-docker"
LABEL maintainer="fluxlabs <support@fluxlabs.ch> (https://fluxlabs.ch)"

COPY . /flux-php-docker

ARG COMMIT_SHA
LABEL org.opencontainers.image.revision="$COMMIT_SHA"
