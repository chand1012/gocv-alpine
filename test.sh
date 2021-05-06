#!/usr/bin/env bash

docker build -f build-stage/Dockerfile -t chand1012/gocv-alpine:4.5.1-buildstage .
docker build -f runtime/Dockerfile -t chand1012/gocv-alpine:4.5.1-runtime .
docker build -f example/Dockerfile -t chand1012/gocv-alpine:test .
docker run --rm chand1012/gocv-alpine:test
docker rmi -f chand1012/gocv-alpine:test
