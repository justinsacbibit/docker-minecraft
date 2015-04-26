FROM ubuntu
MAINTAINER Justin Sacbibit

RUN apt-get -y update
RUN apt-get -y install wget
RUN apt-get -y install git openjdk-7-jdk

WORKDIR /minecraft
VOLUME /minecraft

EXPOSE 25565

ADD ./r.sh /r.sh
RUN chmod +x /r.sh
ENTRYPOINT ["/bin/bash", "/r.sh"]

