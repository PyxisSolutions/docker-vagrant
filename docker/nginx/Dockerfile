# Comment

MAINTAINER trevor o <trevoro@gmail.com>
FROM ubuntu:12.04

RUN echo "deb http://archive.ubuntu.com/ubuntu/ precise universe" >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get -y install nginx vim
RUN echo "daemon off;" >> /etc/nginx/nginx.conf
RUN mkdir /var/www

EXPOSE 80
EXPOSE 443

CMD nginx
