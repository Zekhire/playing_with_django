FROM python:3.9.1-buster

LABEL MAINTAINER="Zekhire"

WORKDIR /app

# Install Python dependencies
COPY requirements.txt requirements.txt
RUN python3 -m pip install -r requirements.txt

COPY . /app
