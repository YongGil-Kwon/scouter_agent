#!/bin/bash
#nohup java -classpath /neowiz/scouter_agent/agent.host/scouter.host.jar scouter.boot.Boot /neowiz/scouter_agent/agent.host/lib > /neowiz/scouter_agent/agent.host/nohup.out &
#sleep 3
nohup java $JAVA_OPTS -jar /neowiz/neon-push.war &