FROM docker.io/eclipse-temurin:17-jdk-alpine
VOLUME /tmp
ARG APP_NAME=hw
ARG APP_VERSION=0.0.1-SNAPSHOT
ARG JAR_FILE=target/${APP_NAME}-${APP_VERSION}.jar
# COPY target/hw-0.0.1-SNAPSHOT.jar app.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]