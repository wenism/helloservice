FROM anapsix/alpine-java:8
ADD /target/helloservice.jar /application.jar
EXPOSE 8080
ENTRYPOINT [ "sh", "-c", "java -Djava.security.egd=file:/dev/./urandom -jar /application.jar" ]