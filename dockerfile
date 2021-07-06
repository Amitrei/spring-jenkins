FROM openjdk:14.0-jdk-buster as dev
WORKDIR /app
ENV JAR_PATH
COPY mvnw /app/mvnw
COPY .mvn /app/.mvn
COPY pom.xml /app/pom.xml
RUN  chmod +x ./mvnw
RUN ./mvnw dependency:go-offline
COPY . /app/
RUN  chmod +x ./mvnw
RUN ./mvnw install
RUN chmod +x ${JAR_PATH}
ENTRYPOINT ["java","-jar","${JAR_PATH}"]