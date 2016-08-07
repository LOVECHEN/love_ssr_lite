#!/bin/bash
fs_mount=$(cd `dirname $0` && pwd -P)/conf
ssr_port="9090"
ssr_config=config
cntr=lovechen/love_ssr_lite

docker kill $(docker ps -q)
docker run -d -v ${fs_mount}:/conf -p ${ssr_port}:8989 -p ${ssr_port}:8989/udp ${cntr} init-start ${ssr_config}.json
