#!/bin/bash
export DEBIAN_FRONTEND=noninteractive

docker pull ghcr.io/music-assistant/server:latest
docker images -a