FROM centos:7

LABEL author "rajatz"
LABEL desc "my first docker file"

RUN yum install httpd
RUN echo "<h1> Hello world </h1>" > /var/www/html




RUN httpd 

CMD httpd -DFOREGROUND