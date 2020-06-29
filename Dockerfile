FROM openjdk:8u242-jdk


ADD . /

RUN ./mvnw clean compile install -DskipTests

ENV PORT=8888
EXPOSE $PORT

ENTRYPOINT [ "sh", "-c", "java -jar *.jar"]