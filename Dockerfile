FROM openjdk:8-jdk-alpine
ADD target/microservice-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8089
CMD ["java","-jar","app.jar"]
