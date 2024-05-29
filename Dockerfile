FROM openjdk:17-jdk-alpine
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} real_time_chat-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java", "-jar", "/real_time_chat-0.0.1-SNAPSHOT.jar"]