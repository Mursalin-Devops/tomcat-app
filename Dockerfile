FROM ubuntu

MAINTAINER mursalin031994@gmail.com

RUN mkdir /opt/tomcat/

WORKDIR /opt/tomcat
RUN wget --quiet --no-cookies https://archive.apache.org/dist/tomcat/tomcat-8/v${8.5.50}/bin/apache-tomcat-${8.5.50}.tar.gz 
RUN tar xvfz apache*.tar.gz
RUN mv apache-tomcat-8.5.85/* /opt/tomcat/.

WORKDIR /opt/tomcat/webapps
RUN curl -O -L https://github.com/AKSarav/SampleWebApp/raw/master/dist/SampleWebApp.war

EXPOSE 8080

CMD ["/opt/tomcat/bin/catalina.sh", "run"]
