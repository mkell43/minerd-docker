# usage: docker run mkell43/minerd -a cryptonight -o stratum+tcp:miningpool.url:port -u username -p password
# ex: docker run mkell43/minerd -d -a cryptonight -o stratum+tcp://mine.xmrpool.net:3333 -u 4Adq5EZWCJ2jh4kttRSoa3KegN3K3KVnkZdATgd1XQcnZt7cJmggXHkjXqrT3anyZ22j7DEE74GkbVcQFyH2nNiC3c7HGvC -p x

FROM          ubuntu:16.04
RUN           apt update && apt install -y git make automake build-essential libcurl4-openssl-dev
RUN           git clone git@github.com:OhGodAPet/cpuminer-multi.git
RUN           cd cpuminer-multi && ./autogen.sh && ./configure CFLAGS="-O3" && make
WORKDIR       /cpuminer-multi
ENTRYPOINT    ["./minerd"]
