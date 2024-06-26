ARG APP_NAME=hw
ARG APP_VERSION=0.0.1-SNAPSHOT
ARG JAR_FILE=target/${APP_NAME}-${APP_VERSION}.jar
FROM docker.io/eclipse-temurin:17-jdk-alpine as build
WORKDIR /tmp
COPY pom.xml mvnw ./
COPY src src
COPY .mvn .mvn
RUN ./mvnw package

FROM docker.io/eclipse-temurin:17-jdk-alpine
# VOLUME /tmp
ARG APP_NAME
ARG APP_VERSION
ARG JAR_FILE
# COPY target/hw-0.0.1-SNAPSHOT.jar app.jar
COPY --from=build /tmp/${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]