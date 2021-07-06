FROM openjdk:14.0-jdk-buster as dev
=RUN chmod +x ${JAR_PATH}
ENTRYPOINT ["java","-jar","${JAR_PATH}"]