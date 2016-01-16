#!/bin/bash

fox=`docker run -d -P --link selenium-hub:hub selenium/node-firefox-debug`
echo $fox
docker port $fox
