FROM openjdk:14.0-jdk-buster as dev
ARG JAR_PATH
COPY ${JAR_PATH} ${JAR_PATH}
RUN chmod +x "${JAR_PATH}"
ENTRYPOINT ["java","-jar","./target/jenkinsdemo-0.0.1-SNAPSHOT.jar"]