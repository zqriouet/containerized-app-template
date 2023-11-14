FROM python:3.11
# FROM alpine:latest
WORKDIR /api
ADD ./requirements.txt /api/requirements.txt
# RUN apt update && apt install -y curl libmariadb-dev && pip install --upgrade pip && pip install --no-cache-dir -r requirements.txt
RUN apt update && apt install -y curl && pip install --upgrade pip && pip install --no-cache-dir -r requirements.txt
# RUN apk add py3-pip && pip install -r requirements.txt
EXPOSE $API_PORT
CMD python api.py