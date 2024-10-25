FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    && pip3 install Flask

RUN mkdir -p /opt/app

COPY application.py /opt/app/

ENV FLASK_APP=/opt/app/application.py

CMD ["flask", "run", "--host=0.0.0.0"]
