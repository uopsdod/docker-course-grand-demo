FROM maven:3-jdk-8
WORKDIR /usr/src/app
COPY . ./
RUN mvn clean package
RUN ls -l target
ENTRYPOINT ["java","-jar","target/accessing-data-mysql-0.0.1-SNAPSHOT.jar"]

