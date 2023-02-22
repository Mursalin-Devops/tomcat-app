FROM ubuntu:latest
MAINTAINER mursalin031994@gmail.com
RUN apt-get -y update 
RUN apt-get -y install wget
RUN mkdir /usr/local/tomcat
RUN wget http://archive.apache.org/dist/tomcat/tomcat-8/v8.5.85/bin/apache-tomcat-8.5.85.tar.gz -O /tmp/tomcat.tar.gz
RUN cd /tmp && tar xvfz tomcat.tar.gz
RUN cp -Rv /tmp/apache-tomcat-8.5.85/* /usr/local/tomcat/
CMD /usr/local/tomcat/bin/catalina.sh run
