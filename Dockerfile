FROM tomcat:8.0-alpine

USER root

LABEL maintainer=”akhilmanepalli@gmail.com”

#ADD /var/lib/jenkins/workspace/demo-project/target/WebApp.war /usr/local/tomcat/webapps/

ADD /WebApp/target/WebApp.war /usr/local/tomcat/webapps/

EXPOSE 8080

CMD [“catalina.sh”, “run”]
