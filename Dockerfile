# Base Image
FROM centos:7

LABEL maintainer="our awesome teacher"

# Updating our OS
RUN yum -y update && yum clean all

# Install Apache package
RUN yum install -y httpd

# Copying index file to html folder
COPY index.html /var/www/html/

# Port on which the container should listen on
EXPOSE 80

# run the httpd service
ENTRYPOINT ["/usr/sbin/httpd"]

# Running httpd service in the background
CMD ["-D", "FOREGROUND"]