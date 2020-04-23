FROM maven:3.6.3-jdk-8
WORKDIR /usr/src/app
COPY . .
RUN mvn package