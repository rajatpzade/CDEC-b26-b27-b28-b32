# Use the CentOS 7 base image
FROM centos:7

# Install Apache HTTP Server
RUN yum -y update && yum -y install httpd && yum clean all

# Create mobile directory inside /var/www/html
RUN mkdir -p /var/www/html/mobile

# Set /var/www/html as the working directory
WORKDIR /var/www/html

# Copy the HTML and image files into the /var/www/html/mobile directory
COPY index.html mobile/
COPY app_logo.png mobile/
COPY mobile_screenshot1.png mobile/
COPY mobile_screenshot2.png mobile/
COPY download_button.png mobile/

# Add ServerName directive to suppress the warning
RUN echo "ServerName localhost" >> /etc/httpd/conf/httpd.conf

# Expose port 80 to the outside world
EXPOSE 80

# Start Apache HTTP Server in the foreground when the container starts
CMD ["httpd", "-D", "FOREGROUND"]
