FROM python:3.9
USER root
ENV PYTHONUNBUFFERED 1
RUN mkdir /django_rest
WORKDIR /django_rest
COPY requirements.txt /django_rest/
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
ADD . /django_rest/
