FROM openjdk:8u242-jdk


ADD . /

RUN ./mvnw clean compile install -DskipTests

ENV PORT=8080
EXPOSE $PORT

ENTRYPOINT [ "sh", "-c", "java -jar target/demo-docker-0.0.1-SNAPSHOT.jar"]