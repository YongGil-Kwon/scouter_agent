#!/usr/bin/env bash

nohup java  -classpath ./scouter.host.jar scouter.boot.Boot ./lib > nohup.out &
sleep 1
nohup java $JAVA_OPTS -jar /neowiz/neon-push.war
