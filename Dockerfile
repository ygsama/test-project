FROM anapsix/alpine-java:8_server-jre_unlimited
VOLUME /tmp
ADD docker-treasury-brain-1.0.0-boot.jar app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
