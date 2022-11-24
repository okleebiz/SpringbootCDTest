FROM adoptopenjdk/openjdk8
ARG port
EXPOSE ${port}
COPY /var/lib/jenkins/workspace/web_jar/Web-Wavic-D-1/target/Web-Viewer-G-0.0.1-SNAPSHOT.jar  /home/Web-Viewer-G-0.0.1-SNAPSHOT.jar
RUN chmod +x /home/Web-Viewer-G-0.0.1-SNAPSHOT.jar
RUN pwd
#WORKDIR 
EXPOSE 18080
ENTRYPOINT ["java", "-jar", "/home/Web-Viewer-G-0.0.1-SNAPSHOT.jar", "-Xms1024m -Xmx1024m  -Dserver.port=18080"]
