#!/bin/bash
fs_mount="/root/docker-ssr/conf"
ssh_port="22222"
ssr_port="9090"
ssr_config=config
cntr=$1

docker kill $(docker ps -q)
docker run -d -v ${fs_mount}:/conf -p ${ssh_port}:22 -p ${ssr_port}:8989 -p ${ssr_port}:8989/udp ${cntr} init-start ${ssr_config}.json
