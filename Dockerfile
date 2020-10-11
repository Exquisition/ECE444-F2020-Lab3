FROM continuumio/anaconda3
MAINTAINER "Andrei Maksimov"

RUN apt-get update -y

WORKDIR /
COPY . /

RUN pip install flask_bootstrap
RUN pip install flask_moment
RUN pip install flask_wtf
RUN pip install email_validator

EXPOSE 80
CMD ["python", "app.py"]