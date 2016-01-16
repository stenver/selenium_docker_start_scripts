# Selenium docker start scripts

This is a repository that has simple wrappers for starting [Selenium dockers](https://github.com/SeleniumHQ/docker-selenium)

To start up the hub:
```
./start_hub.sh
```

To start any of the browsers, run as many times as needed:
```
./start_chrome.sh
./start_firefox.sh
```
# Change selenium hub configurations
The SE_OPTS seems to fail sometimes, instead you can inject those env variables into selenium:

```
newSessionWaitTimeout GRID_NEW_SESSION_WAIT_TIMEOUT
jettyMaxThreads GRID_JETTY_MAX_THREADS
nodePolling: GRID_NODE_POLLING
cleanUpCycle GRID_CLEAN_UP_CYCLE
timeout GRID_TIMEOUT
browserTimeout GRID_BROWSER_TIMEOUT
maxSession GRID_MAX_SESSION
unregisterIfStillDownAfter GRID_UNREGISTER_IF_STILL_DOWN_AFTER
```

Check the selenium dockers and code for default values

## Mac users

If you are using mac, you can find out the docker IP with:
```
./get_mac_ip.sh
```

