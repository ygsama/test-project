FROM anapsix/alpine-java:8_server-jre_unlimited
VOLUME /tmp
ADD build/libs/test-project-1.0.2.jar app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
