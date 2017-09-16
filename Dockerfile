FROM anapsix/alpine-java:8
ADD /build/lib/helloservice-1.jar /application.jar
EXPOSE 8080
ENTRYPOINT [ "sh", "-c", "java -Djava.security.egd=file:/dev/./urandom -jar /application.jar" ]