FROM openjdk:8u242-jdk

ADD demo-docker/target/*.jar /demo-docker.jar

ENV PORT=8888
EXPOSE $PORT

ENTRYPOINT [ "sh", "-c", "java -jar demo-docker.jar"]