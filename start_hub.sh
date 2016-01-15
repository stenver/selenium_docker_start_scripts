#!/bin/bash

#Cleanup
docker kill $(docker ps -a | awk '{print $1}') || true
docker rm $(docker ps -a | awk '{print $1}') || true

#Start hub
docker run -d -p 4444:4444 -e JAVA_OPTS=-Xmx512m --name selenium-hub selenium/hub

