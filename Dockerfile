FROM openjdk:8-jre-slim

EXPOSE 8080

RUN mkdir /app

COPY ./lib/build/libs/lib.jar /usr/local/app/lib.jar

# ENTRYPOINT ["java", "-XX:+UnlockExperimentalVMOptions", "-XX:+UseCGroupMemoryLimitForHeap", "-Djava.security.egd=file:/dev/./urandom","-jar","/usr/local/app/lib.jar"]