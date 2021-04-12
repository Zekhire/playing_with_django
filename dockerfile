FROM python:3.9.1-buster

LABEL MAINTAINER="Zekhire"

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install Python dependencies
COPY requirements.txt requirements.txt
RUN python3 -m pip install -r requirements.txt
RUN rm requirements.txt
