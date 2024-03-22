FROM centos:7

LABEL author "rajatz"
LABEL desc "my first docker file"

RUN yum install httpd
RUN command