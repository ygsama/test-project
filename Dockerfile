FROM anapsix/alpine-java:8_server-jre_unlimited
VOLUME /tmp
ADD test-project-1.0.2-boot.jar app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
