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

EXPOSE 25565

ADD ./spigot-1.8.3.jar /spigot.jar
ADD ./plugins.sh /plugins.sh
ADD ./start.sh /start.sh
RUN chmod +x /start.sh \
  && chmod +x /plugins.sh
ENTRYPOINT ["/bin/bash", "/start.sh"]

