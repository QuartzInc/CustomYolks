FROM python:3.14-slim-trixie

LABEL author="Chriss Quartz" maintainer="quartz@chrissquartz.xyz"

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
	&& rm -rf /var/lib/apt/lists/*

RUN pip install --upgrade pip setuptools wheel && \
	pip install playwright==1.59.0 && \
	playwright install --with-deps

ENV USER=container
ENV HOME=/home/container
WORKDIR /home/container

STOPSIGNAL SIGINT

COPY --chown=root:root --chmod=755 ./../entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/usr/bin/tini", "-g", "--"]
CMD ["/entrypoint.sh"]