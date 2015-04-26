#!/bin/bash

mkdir -p /minecraft/plugins
# Worldedit
wget -q http://dev.bukkit.org/media/files/837/363/worldedit-bukkit-6.0.jar -O /minecraft/plugins/worldedit.jar
# Essentials
wget -q https://hub.spigotmc.org/jenkins/job/Spigot-Essentials/lastSuccessfulBuild/artifact/Essentials/target/Essentials-2.x-SNAPSHOT.jar -O /minecraft/plugins/Essentials.jar
wget -q https://hub.spigotmc.org/jenkins/job/Spigot-Essentials/lastSuccessfulBuild/artifact/EssentialsAntiBuild/target/EssentialsAntiBuild-2.x-SNAPSHOT.jar -O /minecraft/plugins/EssentialsAntiBuild.jar
wget -q https://hub.spigotmc.org/jenkins/job/Spigot-Essentials/lastSuccessfulBuild/artifact/EssentialsChat/target/EssentialsChat-2.x-SNAPSHOT.jar -O /minecraft/plugins/EssentialsChat.jar
wget -q https://hub.spigotmc.org/jenkins/job/Spigot-Essentials/lastSuccessfulBuild/artifact/EssentialsProtect/target/EssentialsProtect-2.x-SNAPSHOT.jar -O /minecraft/plugins/EssentialsProtect.jar
wget -q https://hub.spigotmc.org/jenkins/job/Spigot-Essentials/lastSuccessfulBuild/artifact/EssentialsSpawn/target/EssentialsSpawn-2.x-SNAPSHOT.jar -O /minecraft/plugins/essentialsSpawn.jar
# OpenInv
wget -q http://dev.bukkit.org/media/files/870/415/OpenInv.jar -O /minecraft/plugins/openinv.jar
# DisguiseCraft
wget -q http://dev.bukkit.org/media/files/870/273/DisguiseCraft.jar -O /minecraft/plugins/disguisecraft.jar
# EchoPet
# wget -q http://dev.bukkit.org/media/files/839/247/EchoPet-2.6.0.jar -O /minecraft/plugins/echopet.jar
# FirstJoinPlus
wget -q http://dev.bukkit.org/media/files/806/317/FirstJoinPlus.jar -O /minecraft/plugins/firstjoinplus.jar
# CoreProtect
wget -q http://dev.bukkit.org/media/files/820/756/CoreProtect_2.10.0.jar -O /minecraft/plugins/coreprotect.jar
# AdminEssentials
wget -q http://dev.bukkit.org/media/files/866/562/AdminEssentials.jar -O /minecraft/plugins/adminessentials.jar
# PermissionsEx
# wget -q http://dev.bukkit.org/media/files/874/950/PermissionsEx-1.23.2.jar -O /minecraft/plugins/permissionsex.jar
# LWC
wget -q http://dev.bukkit.org/media/files/718/126/LWC.jar -O /minecraft/plugins/lwc.jar

