FROM        --platform=$TARGETOS/$TARGETARCH python:3.13-slim-bookworm

LABEL       author="Chriss Quartz" maintainer="quartz@chrissquartz.xyz"

RUN         apt update \
    && apt -y install git gcc g++ ca-certificates dnsutils curl iproute2 ffmpeg procps tini \
    && useradd -m -d /home/container container

RUN pip install --upgrade pip setuptools wheel && \
    pip install playwright==1.59.0 && \
    playwright install --with-deps

USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container

STOPSIGNAL SIGINT

COPY        --chown=container:container ./../entrypoint.sh /entrypoint.sh
RUN         chmod +x /entrypoint.sh
ENTRYPOINT    ["/usr/bin/tini", "-g", "--"]
CMD         ["/entrypoint.sh"]
