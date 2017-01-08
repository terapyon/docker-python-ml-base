FROM python:3.6
MAINTAINER "Manabu TERADA" <terada@cmscom.jp>

RUN apt-get update -y
RUN apt-get install -y build-essential libssl-dev libxml2-dev libxslt1-dev 
RUN apt-get install -y libbz2-dev zlib1g-dev libjpeg62-dev libreadline-gplv2-dev
RUN apt-get install -y libblas-dev liblas-dev liblapack-dev gfortran 
RUN apt-get install -y libfreetype6-dev

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
#CMD ["/bin/bash"]

