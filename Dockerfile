FROM openjdk
EXPOSE 8080
COPY /target/gs-maven-0.1.0.jar  gs-maven-0.1.0.jar 
WORKDIR /home
COPY ./ ./
ENTRYPOINT ["Java","-jar","/gs-maven-0.1.0.jar"]
