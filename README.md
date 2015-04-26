# docker-minecraft
docker image for my minecraft server (spigot)

## Building
A Spigot server jar is required to build the Docker image. See http://www.spigotmc.org/threads/buildtools-updates-information.42865/ on how to build one.

Once you have built spigot-1.8.3.jar, place it into the folder containing this repository, and run
``` docker
$ docker build -t mcserver .
```
which will build an image called mcserver from the current directory.

## Running
``` docker
$ docker run -it --publish="25565:25565" --volume="/my/server/files/directory:/minecraft" \
    --name mcserver mcserver
```
