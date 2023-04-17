FROM tomcat:latest
EXPOSE 8080
RUN rm -frv /usr/local/tomcat/webapps/*
ADD ./*.jar /usr/local/tomcat/webapps/
CMD ["catalina.sh", "run"]
