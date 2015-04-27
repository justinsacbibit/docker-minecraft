#!/bin/bash

if [ ! -f /minecraft/spigot.jar ]; then
    cp /spigot.jar /minecraft/spigot.jar
fi

# Copy permissions if it doesn't exist
if [ ! -f /minecraft/permissions.yml ]; then
    cp /permissions.yml /minecraft/permissions.yml
fi

# Copy start script for restarts
cp /start.sh /minecraft/start.sh
# Accept EULA
echo eula=true > /minecraft/eula.txt

# Get plugins
/plugins.sh

java -XX:MaxPermSize=128M -Xmx2014M -jar /minecraft/spigot.jar -o true nogui

bash

