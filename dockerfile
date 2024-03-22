FROM centos:7

LABEL author "rajatz"
LABEL desc "my first docker file"

RUN yum install httpd
RUN echo "<h1"




RUN httpd 

