#!/bin/bash
set -e

docker run --rm \
	-u $(id -u):$(id -g) \
	-v /tmp/.X11-unix:/tmp/.X11-unix:ro \
	-v "$HOME:$HOME" \
	-w "$HOME" \
	-e DISPLAY="unix$DISPLAY" \
	-e HOME \
	knickers/openscad openscad "@$"
