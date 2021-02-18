FROM python:3.9.1-buster

LABEL MAINTAINER="Zekhire"

WORKDIR /app

# RUN pip install --upgrade pip
COPY requirements.txt requirements.txt
RUN python3 -m pip install -r requirements.txt

COPY . /app
