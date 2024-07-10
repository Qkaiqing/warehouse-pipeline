FROM docker.io/openjdk:8-jre
WORKDIR /app
COPY ./src/target/warehouse-0.0.1-SNAPSHOT.jar /app/main.jar
ENTRYPOINT [ "java", "-jar", "-Dspring.config.location=/app/application.yml", "main.jar"]