FROM centos:7

LABEL APP="Studentapp"
LABEL DevopsEngg="Anup"
USER root
WORKDIR /opt/
ADD https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.99/bin/apache-tomcat-8.5.99.tar.gz .
RUN tar -xzvf apache-tomcat-8.5.99.tar.gz 
RUN yum install java -y
WORKDIR /opt/apache-tomcat-8.5.99
COPY student.war  webapps/student.war
COPY context.xml conf/context.xml
ADD https://s3-us-west-2.amazonaws.com/studentapi-cit/mysql-connector.jar lib/mysql-connector.jar

EXPOSE 8080

CMD ["bin/catalina.sh" , "run"]
#ENTRYPOINT [ "bin/catalina.sh" , "RUN" ]
#CMD bin/catalina.sh RUN 
#ENTRYPOINT bin/catalina.sh RUN