# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-alpine

# Define a build argument for the JAR file
ARG JAR_FILE=forsee-mcp-test-1.0-SNAPSHOT.jar

# Add the JAR file specified by the build argument to the container
ADD target/${JAR_FILE} /usr/share/forsee/forsee-mcp-test.jar

# Expose the port the application runs on
EXPOSE 8080

# Define the entry point to run the application
ENTRYPOINT ["java", "-jar", "/usr/share/forsee/forsee-mcp-test.jar"]
