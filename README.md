# docker-debian

My base debian docker image.

## Build local image

```
  make build
```

## Run local image

```
  make run
```

## Run image from [DockerHUB](https://hub.docker.com/r/baden/debian/)

No need clone repository. You can use this method from anywhere.

```
  docker run -it --rm baden/debian
```

## Run with local user privilegies

It make abbility share local folders like this:

```
docker run -it --rm -e USER_ID="$(id -u)" -e GROUP_ID="$(id -g)" -v "$PWD":/home/composer/code -w /home/composer/code baden/debian bash
```
