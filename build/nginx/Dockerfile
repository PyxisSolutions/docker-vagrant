FROM ubuntu:12.04
MAINTAINER trevoro "trevoro@gmail.com"

ENV DEBIAN_FRONTEND noninteractive

RUN echo "deb http://archive.ubuntu.com/ubuntu/ precise universe" >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y -q nginx
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

EXPOSE 80

CMD ["nginx"]
