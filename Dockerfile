# Use a lightweight OpenJDK image
FROM eclipse-temurin:17-jdk-alpine

# Set working directory inside container
WORKDIR /app

# Copy the Spring Boot JAR into the container
COPY target/*.jar app.jar

# Expose port 8081
EXPOSE 8081

# Run the application
ENTRYPOINT ["java","-jar","app.jar"]

