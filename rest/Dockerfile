FROM openjdk:15-jdk-alpine
ARG JAR_FILE=/target/*.jar
ARG CACHEBUST=1
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]