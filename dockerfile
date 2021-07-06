FROM openjdk:14.0-jdk-buster as dev
WORKDIR /app
ENV JAR_PATH
RUN chmod +x "./app/${JAR_PATH}"
ENTRYPOINT ["java","-jar","./app/${JAR_PATH}"]