FROM jpenren/alpine-openjdk8

MAINTAINER Javier Pena

ENV PACKAGE liferay-portal-tomcat-7.0-ce-ga1-20160331161017956.zip

RUN mkdir -p /opt/liferay &&\
    wget -P /opt/liferay/ http://downloads.sourceforge.net/project/lportal/Liferay%20Portal/7.0.0%20GA1/$PACKAGE &&\
    gunzip /opt/liferay/$PACKAGE

EXPOSE 8080

ENTRYPOINT /opt/liferay/tomcat-8.0.30/bin/startup.sh
