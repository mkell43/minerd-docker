# usage: docker run mkell43/minerd -a cryptonight -o stratum+tcp:miningpool.url:port -u username -p password

FROM          alpine:3.6

ENV           MINERD_DIR /cpuminer-multi

RUN           apk --no-cache add autoconf automake build-base make curl curl-dev git
RUN           git clone https://github.com/OhGodAPet/cpuminer-multi.git
RUN           cd $MINERD_DIR && ./autogen.sh && ./configure CFLAGS="-O3" && make
RUN           mv $MINERD_DIR/minerd /usr/bin
RUN           rm -rf $MINERD_DIR
RUN           apk del autoconf automake build-base make git

ENTRYPOINT    ["minerd"]
