FROM ubuntu
MAINTAINER Justin Sacbibit


# Initial setup

# Update package index
RUN apt-get update && apt-get install -y \
    git \
    openjdk-7-jre \
    screen \
    wget

WORKDIR /minecraft
VOLUME /minecraft
VOLUME /minecraft-config

ENV SERVER_DIR /minecraft
ENV CONFIG_DIR /minecraft-config

EXPOSE 25565

ADD ./spigot-1.8.8.jar /spigot.jar
ADD ./start.sh /start.sh
RUN chmod +x /start.sh
CMD ["/start.sh"]
#ENTRYPOINT ["/bin/bash", "/start.sh"]

