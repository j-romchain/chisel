curl -sSL https://github.com/jpillora/chisel/releases/download/v1.7.6/chisel_1.7.6_linux_amd64.gz | zcat > /bin/chisel
chmod +x /bin/chisel
dig +short txt ch whoami.cloudflare @1.0.0.1
chisel server --auth user:pass --socks5 --reverse
