FROM eclipse-temurin:17-jdk-alphine

COPY target/*.jar app.jar
ENTRYPOINT [ "java", "-jar", "app.jar" ]