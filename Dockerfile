
# Use a base image with Java 17
FROM openjdk:17


COPY target/*.jar app.jar
# Expose the application port
EXPOSE 8090

# Run the App
ENTRYPOINT ["java", "-jar", "/app.jar"]