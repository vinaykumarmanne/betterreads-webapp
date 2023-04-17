FROM tomcat:latest
EXPOSE 8080
RUN rm -frv /usr/local/tomcat/webapps/*
COPY /var/lib/jenkins/workspace/betterreads-0.0.1/target/betterreads-0.0.1-SNAPSHOT.jar /usr/local/tomcat/webapps/
CMD ["catalina.sh", "run"]
