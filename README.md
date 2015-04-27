# docker-minecraft
docker image for my minecraft server (spigot)

## Building
A Spigot server jar is required to build the Docker image. See http://www.spigotmc.org/threads/buildtools-updates-information.42865/ on how to build one.

Once you have built spigot-1.8.3.jar, place it into the folder containing this repository, and run
``` docker
$ docker build -t mcserver .
```
which will build an image called mcserver from the current directory.

## Configuration
Any custom configuration can be mounted to /minecraft-config, where you may have your own config.sh script which fetches plugins, sets permissions etc. See [justinsacbibit/spigot-config](https://github.com/justinsacbibit/spigot-config) for my own configuration repository.

## Running
``` docker
$ docker run -it -p 25565:25565 \
    -v "/my/server/files/directory:/minecraft" \
    -v "/my/config/directory:/minecraft-config" \
    --name mcserver mcserver
```
