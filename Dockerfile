FROM java:8-jre
VOLUME /tmp
ADD target/tagcloud-0.0.1-SNAPSHOT.jar app.jar
#Justo to have modificsation time.
RUN bash -c 'touch /app.jar' 
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]