FROM python:3

ENV PYTHONUNBUFFERED 1
ENV LANG C.UTF-8
# change ENV variable for your project
ENV PROJECTNAME mysite

RUN mkdir /app
WORKDIR /app

ADD requirements.txt /app/
RUN pip install -r requirements.txt
ADD . /app/
RUN django-admin startproject mysite .