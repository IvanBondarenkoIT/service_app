FROM python:3.9-alpine3.16

COPY requirements.txt /temp/requirements.txt
COPY unite_together_django_website /unite_together_django_website
WORKDIR /unite_together_django_website
EXPOSE 8000

RUN apk add postgresql-client build-base postgresql-dev

RUN pip install -r /temp/requirements.txt

RUN adduser --disabled-password service-user

USER service-user
