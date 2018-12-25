FROM frolvlad/alpine-oraclejdk8:slim
VOLUME /tmp
ADD target/limits-service-0.0.1-SNAPSHOT.jar app.jar
RUN sh -c 'touch /app.jar'
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java -jar /app.jar" ]