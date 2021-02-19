FROM openjdk:15-jdk-alpine
ARG JAR_FILE=/target/rest-test-0.0.1-SNAPSHOT.jar
ARG CACHEBUST=11
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]