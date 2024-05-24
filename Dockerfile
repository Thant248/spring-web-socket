# Stage 1: Build the application using Maven
FROM maven:3.8.4-openjdk-17 AS build

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the pom.xml file and download the dependencies
COPY pom.xml .
RUN mvn dependency:go-offline -B

# Copy the source code
COPY src ./src

# Package the application (skip tests if necessary)
RUN mvn package -DskipTests -B

# Stage 2: Run the application using OpenJDK
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the jar file from the build stage
COPY --from=build /usr/src/app/target/*.jar ./app.jar

# Expose the port your app runs on
EXPOSE 8080

# Define the command to run the application
CMD ["java", "-jar", "app.jar"]
