# GoCV-compatible OpenCV 4.5.1 Alpine 3.13 Docker images

## What's in build-stage image?

 - Alpine 3.13
 - FFMPEG 4.3.1
 - Golang 1.16
 - OpenCV 4.5.1
 - OpenCV 4.5.1 contrib packages required by GoCV

## What's in runtime image?

 - Alpine 3.13
 - Whatever you need there

## Purpose

This is a build image for the multi-stage image provisioning as well as runtime image to work with gocv-based binaries.

## Example

Sample Docker file you can find [here](example/Dockerfile).

## Build the runtime image

```bash
docker build -f runtime/Dockerfile -t chand1012/gocv-alpine:4.5.1-runtime .
```

## Build the build-stage image

```bash
docker build -f build-stage/Dockerfile -t chand1012/gocv-alpine:4.5.1-buildstage .
```

## Test sample:

```bash
docker build -f example/Dockerfile -t chand1012/gocv-alpine:test .
docker run --rm chand1012/gocv-alpine:test
```

the output should be the following:
```bash
gocv version: 0.27.0
opencv lib version: 4.5.1
```

You can also download the images from [Docker Hub](https://hub.docker.com/r/chand1012/gocv-alpine).