# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-alpine

# Define a build argument for the JAR file
ARG JAR_FILE=claude-testers-1.0-SNAPSHOT.jar

# Add the JAR file specified by the build argument to the container
ADD ${JAR_FILE} /usr/share/forsee/claude-testers-1.0-SNAPSHOT.jar

# Expose the port the application runs on
EXPOSE 8080

# Define the entry point to run the application
ENTRYPOINT ["java", "-jar", "/usr/share/forsee/claude-testers-1.0-SNAPSHOT.jar"]
