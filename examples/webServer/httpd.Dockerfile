FROM sbeliakou/centos
MAINTAINER you
RUN yum install -y httpd \
systemctl start httpd \
systemctl enable httpd
COPY index.html /var/www/html/
EXPOSE 80
CMD httpd -DFOREGROUND
