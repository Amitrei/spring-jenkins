FROM openjdk:14.0-jdk-buster as dev
ENV JAR_PATH=fsaf
RUN chmod +x ${JAR_PATH}
ENTRYPOINT ["java","-jar","${JAR_PATH}"]