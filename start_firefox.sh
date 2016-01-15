#!/bin/bash

fox=`docker run -d -P --link selenium-hub:hub selenium/node-firefox-debug`
docker port $fox
