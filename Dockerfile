FROM python:3.10-slim

RUN apt-get update && apt-get upgrade -y

WORKDIR /app

RUN pip install -U pip

COPY ./ /app
COPY pyproject.toml /app/pyproject.toml

RUN pip install .