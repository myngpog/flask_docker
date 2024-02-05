FROM ubuntu:16.04

MAINTAINER "My Nguyen <mynguyen@g.hmc.edu>"

WORKDIR /flask_web

RUN apt-get update -y && \
    apt-get install -y python3-pip python3-dev

RUN pip3 install --upgrade pip==20.3.4

COPY ./requirements.txt /flask_web/requirements.txt

RUN pip3 install -r requirements.txt

COPY ./app.py /flask_web/app.py

ENTRYPOINT [ "python3" ]

CMD [ "app.py" ]
