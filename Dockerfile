FROM ubuntu
MAINTAINER Justin Sacbibit


# Initial setup

# Update package index
RUN apt-get -y update

RUN apt-get -y install wget
RUN apt-get -y install git
# Java Runtime
RUN apt-get -y install openjdk-7-jre

WORKDIR /minecraft
VOLUME /minecraft
VOLUME /minecraft-config

ENV SERVER_DIR /minecraft
ENV CONFIG_DIR /minecraft-config

EXPOSE 25565

ADD ./spigot-1.8.3.jar /spigot.jar
ADD ./start.sh /start.sh
RUN chmod +x /start.sh
ENTRYPOINT ["/bin/bash", "/start.sh"]

