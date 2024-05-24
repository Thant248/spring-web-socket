
# Use a base image with Java 17
FROM openjdk:17
COPY target/*.jar real_time_chat-0.0.1-SNAPSHOT.jar
# Expose the application port
EXPOSE 8090

# Run the App
ENTRYPOINT ["java", "-jar", "/real_time_chat-0.0.1-SNAPSHOT.jar"]