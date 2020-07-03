FROM ubuntu:focal

RUN apt update \
	&& apt -y install python3 \
	&& apt -y install python3-pip \
	&& pip3 install shadowsocks \
        && sed -i 's/EVP_CIPHER_CTX_cleanup/EVP_CIPHER_CTX_reset/g' /usr/local/lib/python3.8/dist-packages/shadowsocks/crypto/*.py \
	&& mkdir -p /etc/shadowsocks/

COPY config.json /etc/shadowsocks/

ENTRYPOINT ["/usr/bin/tail", "-f", "/var/log/shadowsocks.log"]
ENTRYPOINT ["ssserver", "-c", "/etc/shadowsocks/config.json", "--log-file", "/var/log/shadowsocks.log"]
