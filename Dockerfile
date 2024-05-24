# our final base image
FROM openjdk:17-jre-alpine

# set deployment directory
WORKDIR /my-project

# copy over the built artifact from the maven image
COPY --from=maven target/real_time_chat-0.0.1-SNAPSHOT.jar app.jar

# set the startup command to run your binary
CMD ["java", "-jar", "app.jar"]
