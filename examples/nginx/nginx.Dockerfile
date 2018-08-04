FROM sbeliakou/centos:7.2
MAINTAINER Y (y)
RUN yum install -y nginx
COPY configs/nginx.conf /etc/nginx/nginx.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
