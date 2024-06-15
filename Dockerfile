FROM ubuntu:latest AS build

RUN apt-get update && apt-get install -y openjdk-21-jdk maven

COPY . .

RUN mvn clean package

FROM openjdk:21-jdk-slim

EXPOSE 8080

COPY --from=build /target/Backend-1.jar app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]

