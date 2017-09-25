FROM anapsix/alpine-java:8
ADD /build/libs/helloservice-1.jar /application.jar
EXPOSE 8080
ENTRYPOINT [ "java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/application.jar" ]