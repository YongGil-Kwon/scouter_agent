FROM asia.gcr.io/neoregistry/zulu:8u202
MAINTAINER trois@neowiz.com

RUN mkdir -p /neowiz-data/scounter-agent  && chown -R neowiz.neowiz /neowiz-data

COPY healthy /tmp/
ADD agent.host /neowiz/agent.host
ADD agent.java /neowiz/agent.java
RUN chown -R neowiz.neowiz /neowiz

USER neowiz

#ENTRYPOINT  ["/bin/sh", "/neowiz/scouter_agent/agent.host/entrypoint.sh"]
ENTRYPOINT  java  -classpath /neowiz/agent.host/scouter.host.jar scouter.boot.Boot /neowiz/scouter_agent/agent.host/lib%