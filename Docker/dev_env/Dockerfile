# Pull base image  
FROM ubuntu

MAINTAINER TAKCHICHAN "ooooops.chan@gmail.com"  
# backup sources file
RUN cp /etc/apt/sources.list /etc/apt/sources.list.bak

# update sources
ADD sources.list /tmp/sources.list
RUN cp -f /tmp/sources.list /etc/apt/sources.list
RUN apt-get update  
  
# Install curl  
RUN apt-get update
RUN apt-get -y install python
RUN apt-get -y install gcc
RUN apt-get -y install g++
RUN apt-get -y install automake
RUN apt-get -y install autoconf
RUN apt-get -y install libtool
RUN apt-get -y install git
RUN apt-get -y install golang
RUN apt-get -y install ssh
RUN apt-get -y install subversion
RUN apt-get -y install cmake
RUN apt-get -y install lighttpd
RUN apt-get -y install vim
RUN apt-get -y install wget
RUN apt-get -y install curl
RUN apt-get -y install net-tools
RUN apt-get -y install inetutils-ping
RUN apt-get -y install telnet

RUN mkdir /var/run/sshd

# change sshd listen port
RUN sed -i 's/Port[ ]*22/Port 36000/' /etc/ssh/sshd_config
RUN echo "PasswordAuthentication yes" >> /etc/ssh/sshd_config

# add user
RUN mkdir /home/takchi
RUN useradd -s /bin/bash takchi
RUN echo "takchi:123456" | chpasswd

# Container should expose ports.  
EXPOSE 36000
CMD ["/usr/sbin/sshd", "-D"]

# Define default command.
# EXPOSE 80
# ENTRYPOINT service lighttpd start