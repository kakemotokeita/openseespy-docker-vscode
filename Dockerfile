FROM python:3.8

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN apt-get update
RUN apt-get install -y --no-install-recommends \
    python3-dev \
    python3-pip

ADD . /usr/src/app/
RUN pip install -r requirements.txt

ENTRYPOINT bash
