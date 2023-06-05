#!/bin/sh
podman build -t astrovim $(readlink -f $PWD) &&
podman create -it \
--name astrovim-pod \
-v ${HOME}:${HOME}:rslave \
--security-opt label=disable \
--privileged \
--net host \
astrovim:latest
