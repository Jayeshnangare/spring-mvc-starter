# Use a Tomcat base image with a compatible JRE
# Tomcat 9 supports Java 8+, and your project uses Java 8
FROM tomcat:9-jre11-temurin

# Set the working directory to Tomcat's webapps directory
WORKDIR /usr/local/tomcat/webapps

# Copy your 'spring-mvc.war' file into the webapps directory.
# Tomcat will automatically deploy WAR files placed here.
# 'target/spring-mvc.war' is the path on your host, 'spring-mvc.war' is the name inside the container.
COPY target/spring-mvc.war spring-mvc.war

# Expose the default Tomcat port (8080)
EXPOSE 8080

# Command to start Tomcat (this is the default CMD for most Tomcat images)
# CMD ["catalina.sh", "run"]