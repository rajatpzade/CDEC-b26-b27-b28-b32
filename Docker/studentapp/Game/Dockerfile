FROM ubuntu:22.04
RUN apt update 
RUN apt install nginx zip curl git -y

RUN echo  "daemon off;" >> /etc/nginx/nginx.conf
WORKDIR /var/www/html/
RUN git clone https://github.com/gabrielecirulli/2048.git && mv 2048/* . && rm -rf 2048.git
EXPOSE 80

CMD ["/usr/sbin/nginx" , "-c" , "/etc/nginx/nginx.conf"]