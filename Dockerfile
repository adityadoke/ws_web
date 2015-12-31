FROM phusion/baseimage

RUN apt-get update && apt-get upgrade -y
RUN apt-get install unzip -y
RUN apt-get install nginx -y
RUN apt-get install telnet -y
RUN service nginx stop
RUN apt-get install python-pip -y
#RUN pip install s3cmd
RUN pip install awscli
ENV DEBIAN_FRONTEND noninteractive
RUN mkdir ~/.aws/
ADD /tmp/credentials ~/.aws/

###### Apache2 installation #####
RUN sudo apt-get install apache2
