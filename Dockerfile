FROM python:3.11-alpine3.18

ENV LANG ru_RU.UTF-8
ENV LANGUAGE ru_RU:ru
ENV LC_ALL ru_RU.UTF-8
ENV PYTHONUNBUFFERED 1

WORKDIR /opt/project
COPY ./requirements.txt .

RUN apk add ca-certificates ffmpeg libva-intel-driver && rm -rf /var/cache/*
RUN pip install --upgrade pip && pip install --no-cache-dir -r requirements.txt

EXPOSE 8000
