FROM maven
WORKDIR /app
COPY target/client-0.0.1-SNAPSHOT.jar app.jar
COPY wait-for-it.sh wait-for-it.sh
RUN chmod +x wait-for-it.sh
ENTRYPOINT ["./wait-for-it.sh", "mysql-container:3306", "--", "java", "-jar", "app.jar"]