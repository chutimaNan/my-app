# FROM alpine/git as clone 
# WORKDIR /app
# RUN git clone https://github.com/chutimaNan/my-app.git

# FROM maven:3.5-jdk-8-alpine as build 
# WORKDIR /app
# COPY --from=clone /app/my-app /app 
# RUN mvn clean install

FROM openjdk:8-jre-alpine
WORKDIR /app
#COPY --from=build /app/target/my-app-1.0-SNAPSHOT.jar /app/my-app-1.0-SNAPSHOT.jar
COPY ./target/my-app-1.0-SNAPSHOT.jar /app/my-app-1.0-SNAPSHOT.jar
#ENTRYPOINT ["sh", "-c"]
#EXPOSE 5000
#CMD [ "java", "-jar", "/app/my-app-1.0-SNAPSHOT.jar" ]
ENTRYPOINT [ "java", "-jar", "/app/my-app-1.0-SNAPSHOT.jar" ]
#CMD ["java -jar /app/target/my-app-1.0-SNAPSHOT.jar"]



#https://github.com/chutimaNan/my-app.git