FROM ubuntu:16.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update

RUN apt-get install -y default-jre
# RUN apt-get install -y tomcat8

ADD ./target /home

ENTRYPOINT ["java","-jar","/home/my-app-1.0-SNAPSHOT.jar"]
