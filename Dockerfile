FROM debian:jessie
MAINTAINER Jivan Kulkarni <jivank@gmail.com>

ENV DESTINATIONPORT
ENV LOCALIP
ENV LOCALPORT
ENV DESTINATIONUSER
ENV DESTINATIONIP
RUN apt-get update && \
    apt-get install -y openssh && \
    apt-get clean

VOLUME /root/.ssh

RUN chmod +x /root/start.sh
CMD ["/root/start.sh"]