# Pull base image
FROM ubuntu
MAINTAINER TAKCHICHAN "ooooops.chan@gmail.com"
# Update source
RUN apt-get update
# Install pptpd,rsyslog to see debug info
RUN apt-get -y install pptpd iptables net-tools rsyslog
RUN echo "localip 192.168.16.1" >> /etc/pptpd.conf
RUN echo "remoteip 192.168.16.234-238,192.168.16.245" >> /etc/pptpd.conf
RUN echo "ms-dns 8.8.8.8" >> /etc/ppp/pptpd-options
RUN echo "ms-dns 8.8.4.4" >> /etc/ppp/pptpd-options
RUN echo "link_the_world * 12345670 *" >> /etc/ppp/chap-secrets
RUN echo "net.ipv4.ip_forward = 1" >>  /etc/sysctl.conf
RUN sysctl --load=/etc/sysctl.conf
# Container should expose ports.
EXPOSE 1723
# Add start shell
ADD start_pptpd.sh /
# Define default command.
ENTRYPOINT sh /start_pptpd.sh
