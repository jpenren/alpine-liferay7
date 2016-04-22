FROM jpenren/alpine-openjdk8

MAINTAINER Javier Pena

ENV PACKAGE liferay-portal-tomcat-7.0-ce-ga1-20160331161017956.zip

RUN wget -P /tmp/ http://downloads.sourceforge.net/project/lportal/Liferay%20Portal/7.0.0%20GA1/$PACKAGE &&\
    mkdir -p /opt &&\
    unzip /tmp/$PACKAGE -d /opt/ -x "liferay-portal-7.0-ce-ga1/work/*" &&\
    rm /tmp/$PACKAGE
    
VOLUME /opt/liferay-portal-7.0-ce-ga1/data

EXPOSE 8080

CMD ["/opt/liferay-portal-7.0-ce-ga1/tomcat-8.0.32/bin/catalina.sh", "run"]
