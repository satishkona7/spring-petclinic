FROM maven:3-openjdk-11
WORKDIR /app
COPY . .
RUN mvn package
RUN mv /app/target/spring-petclinic-2.4.2.jar.original sp22
RUN mv /app/target/spring-petclinic-2.4.2.jar app.jar
EXPOSE 8080
CMD [ "java", "-jar", "/app/app.jar" ]
