# Use the official OpenJDK image from Docker Hub
FROM openjdk:21-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the jar file from the build output
COPY build/libs/helloworld2-0.0.1-SNAPSHOT.jar app.jar

# Expose the application port
EXPOSE 9090

# Command to run the jar
ENTRYPOINT ["java", "-jar", "app.jar"]
