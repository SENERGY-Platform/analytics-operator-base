# analytics-operator-base

Base image for analytics operators written in Java.

Use this image as follows:
```
# Build your operator, for example using maven
FROM maven:3.6-openjdk-11-slim as builder
ADD src /usr/src/app/src
ADD pom.xml /usr/src/app
WORKDIR /usr/src/app
RUN mvn clean install

# Insert your jar into the base image
FROM ghcr.io/senergy-platform/analytics-operator-base:latest
ENV NAME example
COPY --from=builder /usr/src/app/target/operator-${NAME}-jar-with-dependencies.jar /opt/operator.jar
```