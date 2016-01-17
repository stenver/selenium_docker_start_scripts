#!/bin/bash

#Cleanup
docker kill $(docker ps -a | awk '{print $1}') || true
docker rm $(docker ps -a | awk '{print $1}') || true

#Start hub
JAVA_OPTS="-Xmx512m -Dwebdriver.server.session.timeout=-1 -Dwebdriver.server.browser.timeout=-1"
docker run -d -p 4444:4444 -e JAVA_OPTS=$JAVA_OPTS -e GRID_TIMEOUT=86400 -e GRID_BROWSER_TIMEOUT=86400 --name selenium-hub selenium/hub

