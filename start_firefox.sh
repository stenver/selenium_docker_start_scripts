#!/bin/bash

JAVA_OPTS="-Xmx512m -Dwebdriver.server.session.timeout=-1 -Dwebdriver.server.browser.timeout=-1"
fox=`docker run -d -P -e JAVA_OPTS="$JAVA_OPTS" --link selenium-hub:hub selenium/node-firefox-debug`
echo $fox
docker port $fox
