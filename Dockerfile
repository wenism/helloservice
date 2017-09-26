FROM anapsix/alpine-java:8
WORKDIR /tmp
ADD /build/libs/helloservice-1.jar application.jar
EXPOSE 8080
USER 65534
ENTRYPOINT [ "java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/application.jar" ]