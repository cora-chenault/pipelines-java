FROM maven:3.6.3-jdk-8 AS builder
WORKDIR /usr/src/app
COPY . .
RUN mvn package

FROM tomcat:8.0
COPY --from=builder /usr/src/app/target/helloworld.war /usr/local/tomcat/webapps
ENTRYPOINT [ "catalina.sh" ]
CMD ["run"]