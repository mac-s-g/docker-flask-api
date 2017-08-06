# flask api
FROM python:3.6
MAINTAINER Mac Gainor "mac.gianor@gmail.com"

ADD . /src

# apt-get
RUN apt-get update

# python dependencies
WORKDIR /src

#install req's
RUN pip install -r requirements.txt


EXPOSE 5000
