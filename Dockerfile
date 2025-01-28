FROM openjdk:18
WORKDIR /app
COPY ./target/tap-apigateway.jar /app
EXPOSE 5360
CMD ["java", "-jar", "tap-apigateway.jar"]
 
 
 
