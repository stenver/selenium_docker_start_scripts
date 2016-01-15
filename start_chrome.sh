#!/bin/bash

chrome=`docker run -d -P --link selenium-hub:hub selenium/node-chrome-debug`
docker port $chrome
