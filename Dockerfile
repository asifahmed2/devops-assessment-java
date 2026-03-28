# Use official Java runtime
FROM openjdk:17

# Set working directory
WORKDIR /app

# Copy project jar to container
COPY target/devopsapp-0.0.1-SNAPSHOT.jar devopsapp.jar

# Expose port 8080
EXPOSE 8080

# Run the jar
ENTRYPOINT ["java","-jar","devopsapp.jar"]