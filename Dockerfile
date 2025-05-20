FROM openjdk:21-jdk-slim
WORKDIR /app
RUN apt-get update && apt-get install -y wget
COPY build/libs/*.jar app.jar
EXPOSE 8762
ENTRYPOINT ["java", "-jar", "app.jar"]