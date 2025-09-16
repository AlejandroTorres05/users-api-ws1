# Dockerfile para Users API (Spring Boot 1.5.6)
FROM openjdk:8-jre-alpine

LABEL maintainer="alejandro.t.s.321@gmail.com"

WORKDIR /app

COPY target/users-api-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8083

ENV JWT_SECRET=PRFT
ENV SERVER_PORT=8083

ENTRYPOINT ["java", "-jar", "app.jar"]
