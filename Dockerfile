# Use a base image with Tomcat and Java installed
FROM tomcat:latest

# Remove the default webapps directory
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the WAR file into the webapps directory of Tomcat
COPY target/todo-app.war /usr/local/tomcat/webapps/

# Expose the port your servlet application listens on
EXPOSE 8080

# Start Tomcat server
CMD ["catalina.sh", "run"]

