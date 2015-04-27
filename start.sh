#!/bin/bash

if [ ! -f /minecraft/spigot.jar ]; then
    cp /spigot.jar /minecraft/spigot.jar
fi

if [ ! -f /minecraft/start.sh ]; then
    cp /start.sh /minecraft/start.sh
fi

# Accept EULA
echo eula=true > /minecraft/eula.txt

/plugins.sh

java -XX:MaxPermSize=128M -Xmx2014M -jar /minecraft/spigot.jar -o true nogui

bash

