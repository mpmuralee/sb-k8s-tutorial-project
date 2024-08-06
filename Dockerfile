FROM openjdk:17-jdk-alpine

# Create a volume for /tmp
VOLUME /tmp

# Set the working directory in the container
WORKDIR /app

# Copy the executable JAR file to the container
COPY target/demo-0.0.1-SNAPSHOT.jar app.jar

# Run the JAR file
ENTRYPOINT ["java", "-jar", "app.jar"]