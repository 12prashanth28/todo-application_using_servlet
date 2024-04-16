# Use a base image with Java installed
FROM openjdk:latest

# Set the working directory inside the container
WORKDIR /app

# Copy the compiled Java application JAR file into the container
COPY target/todo-app.jar /app/

# Expose the port your Java application listens on
EXPOSE 8080

# Command to run your Java application
CMD ["java", "-jar", "todo-app.jar"]
