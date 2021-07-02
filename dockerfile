FROM openjdk:14.0-jdk-buster as dev
WORKDIR /app

COPY mvnw /app/mvnw
COPY .mvn /app/.mvn
COPY pom.xml /app/pom.xml
RUN  chmod +x ./mvnw
RUN ./mvnw dependency:go-offline
COPY . /app/
RUN  chmod +x ./mvnw
RUN ./mvnw install
RUN chmod +x /app/target/jenkinsdemo-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/app/target/jenkinsdemo-0.0.1-SNAPSHOT.jar"]