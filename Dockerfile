From fedora
MAINTAINER mkp "mkp"
RUN yum install httpd -y
# this is a apche httpd server 
WORKDIR /var/www/html/ 
ADD . . 
EXPOSE 80
ENTRYPOINT httpd -DFOREGROUND 
# don't run systemctl start httpd
