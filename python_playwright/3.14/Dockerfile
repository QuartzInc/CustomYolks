FROM		python:3.14-slim-trixie

LABEL       author="Chriss Quartz" maintainer="quartz@chrissquartz.xyz"

RUN apt-get update && apt-get install -y --no-install-recommends \
	ca-certificates \
	curl \
	dnsutils \
	ffmpeg \
	g++ \
	gcc \
	git \
	iproute2 \
	procps \
	tini \
	libxcomposite1 \
	libxdamage1 \
	libgtk-3-0 \
	libgtk-4-1 \
	libatk1.0-0 \
	libgstreamer-1.0-0 \
	libgraphene-1.0-0 \
	libicu76 \
	libxslt1.1 \
	libevent-2.1-7 \
	libgcrypt20 \
	libgpg-error0 \
	libgstallocators-1.0-0 \
	libgstapp-1.0-0 \
	libgstbase-1.0-0 \
	libgstpbutils-1.0-0 \
	libgstaudio-1.0-0 \
	libgsttag-1.0-0 \
	libgstvideo-1.0-0 \
	libgstgl-1.0-0 \
	libgstcodecparsers-1.0-0 \
	libgstfft-1.0-0 \
	libwebpdemux2 \
	libavif16 \
	libharfbuzz-icu0 \
	libenchant-2-2 \
	libhyphen0 \
	libsecret-1-0 \
	libgles2-mesa \
	&& rm -rf /var/lib/apt/lists/*

ENV         USER=container
ENV         HOME=/home/container
WORKDIR     /home/container

STOPSIGNAL	SIGINT

COPY        --chown=root:root --chmod=755 ./../entrypoint.sh /entrypoint.sh
ENTRYPOINT	["/usr/bin/tini", "-g", "--"]
CMD         ["/entrypoint.sh"]
