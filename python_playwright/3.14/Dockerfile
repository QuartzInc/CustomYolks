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
	libgtk-3-0t64 \
	libatk1.0-0t64 \
	libgstreamer-1.0.so.0 \                         
	libgtk-4.so.1          \                          
	libgraphene-1.0.so.0    \                         
	libicudata.so.76         \                        
	libicui18n.so.76          \                       
	libicuuc.so.76             \                      
	libxslt.so.1                \                     
	libevent-2.1.so.7            \                    
	libgcrypt.so.20               \                   
	libgpg-error.so.0              \                  
	libgstallocators-1.0.so.0       \                 
	libgstapp-1.0.so.0               \                
	libgstbase-1.0.so.0               \               
	libgstpbutils-1.0.so.0             \              
	libgstaudio-1.0.so.0                \             
	libgsttag-1.0.so.0                   \            
	libgstvideo-1.0.so.0                  \           
	libgstgl-1.0.so.0                      \          
	libgstcodecparsers-1.0.so.0             \         
	libgstfft-1.0.so.0                       \        
	libwebpdemux.so.2                         \       
	libavif.so.16                              \      
	libharfbuzz-icu.so.0                        \     
	libmanette-0.2.so.0                          \    
	libenchant-2.so.2                             \   
	libhyphen.so.0                                 \  
	libsecret-1.so.0                                \ 
	libwoff2dec.so.1.0.2                             \
	libGLESv2.so.2 \
	&& rm -rf /var/lib/apt/lists/*


ENV         USER=container
ENV         HOME=/home/container
WORKDIR     /home/container

STOPSIGNAL	SIGINT

COPY        --chown=root:root --chmod=755 ./../entrypoint.sh /entrypoint.sh
ENTRYPOINT	["/usr/bin/tini", "-g", "--"]
CMD         ["/entrypoint.sh"]
