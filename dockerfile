FROM centos:7

LABEL author "rajatz"
LABEL desc "my first docker file"

RUN yum install httpd -y 
RUN echo "<h1> Hello world </h1>" > /var/www/html/index.html

EXPOSE 80

CMD httpd -DFOREGROUND



---

FROM centos:7

ADD Curl -O https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.99/bin/apache-tomcat-8.5.99.tar.gz

RUN tar -xzf apache-tomcat-8.5.99.tar.gz -C /opt/

WORKDIR /opt/apache-tomcat-8.5.99

RUN yum install epel-release -y 

RUN yum install java-11-openjdk-devel 

WORKDIR webapps

ADD curl -O https://s3-us-west-2.amazonaws.com/studentapi-cit/student.war 

EXPOSE 8080

CMD ["catalina.sh", "start"]



