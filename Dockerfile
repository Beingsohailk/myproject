FROM eclipse-temurin:8-jre-alpine

EXPOSE 8080
WORKDIR /usr/app

# safer: copy any jar produced by the build
COPY build/libs/*.jar app.jar

ENTRYPOINT ["java","-jar","/usr/app/app.jar"]
