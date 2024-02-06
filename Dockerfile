FROM openjdk:11-jre-slim
COPY prom_agent.yml /etc/prom_agent.yml
COPY entrypoint.sh .
ADD https://repo1.maven.org/maven2/io/prometheus/jmx/jmx_prometheus_javaagent/0.20.0/jmx_prometheus_javaagent-0.20.0.jar /opt/jmx_prometheus_javaagent.jar
CMD ["/bin/bash","-c","./entrypoint.sh"]