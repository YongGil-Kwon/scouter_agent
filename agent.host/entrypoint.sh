#!/bin/bash
nohup java $JAVA_OPTS -jar /neowiz/billing-server.war &
sleep 3
nohup java -classpath /neowiz/scouter_agent/agent.host/scouter.host.jar scouter.boot.Boot /neowiz/scouter_agent/agent.host/lib > /neowiz/scouter_agent/agent.host/nohup.out &