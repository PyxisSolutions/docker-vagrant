FROM ubuntu:12.04
MAINTAINER trevoro "trevoro@gmail.com"

ADD policy-rc.d /usr/sbin/policy-rc.d
RUN /bin/chmod 755 /usr/sbin/policy-rc.d

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get install -y wget
RUN wget http://www.rabbitmq.com/rabbitmq-signing-key-public.asc -O /tmp/key.asc
RUN apt-key add /tmp/key.asc

RUN echo "deb http://www.rabbitmq.com/debian/ testing main" > /etc/apt/sources.list.d/rabbitmq.list
RUN apt-get -qq update > /dev/null
RUN apt-get -qq -y install rabbitmq-server > /dev/null
RUN /usr/sbin/rabbitmq-plugins enable rabbitmq_management

EXPOSE 5672 15672

CMD /usr/sbin/rabbitmq-server
