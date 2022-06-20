FROM heroku/heroku:20
RUN curl -sSL https://github.com/jpillora/chisel/releases/download/v1.7.6/chisel_1.7.6_linux_amd64.gz | zcat > /bin/chisel
RUN chmod +x /bin/chisel
RUN useradd -m heroku
USER heroku
EXPOSE 5000
CMD server.sh
#CMD dig +short txt ch whoami.cloudflare @1.0.0.1
#CMD chisel server --auth $CHISEL_AUTH --socks5 --reverse
