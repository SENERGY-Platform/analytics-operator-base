#!/bin/bash
if [ "$METRICS" == "true" ]
then
java -javaagent:/opt/jmx_prometheus_javaagent.jar=$METRICS_PORT:/etc/prom_agent.yml -jar /opt/operator.jar
else
java -jar /opt/operator.jar
fi