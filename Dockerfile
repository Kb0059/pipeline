FROM openjdk:8
EXPOSE 8080
RUN /target/gs-maven-0.1.0.jar gs-maven-0.1.0.jar
WORKDIR /home
COPY ./ ./
ENTRYPOINT ["Java","-jar","/gs-maven-0.1.0.jar"]