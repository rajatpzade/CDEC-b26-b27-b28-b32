# Use the CentOS 7 base image
FROM centos:7

# Install Apache HTTP Server
RUN yum -y update && yum -y install httpd && yum clean all

# Create home directory inside /var/www/html
RUN mkdir -p /var/www/html/home

# Set /var/www/html as the working directory
WORKDIR /var/www/html

# Copy the HTML and CSS files into the /var/www/html/home directory
COPY index.html home/
COPY styles.css home/

# Add ServerName directive to suppress the warning
RUN echo "ServerName localhost" >> /etc/httpd/conf/httpd.conf

# Expose port 80 to the outside world
EXPOSE 80

# Start Apache HTTP Server in the foreground when the container starts
CMD ["httpd", "-D", "FOREGROUND"]
