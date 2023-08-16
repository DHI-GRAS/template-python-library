FROM python:3.10-slim

RUN apt-get update && apt-get upgrade -y

WORKDIR /app/my_library

RUN pip install -U pip

COPY src /app/my_library/src
COPY pyproject.toml /app/my_library/pyproject.toml

RUN pip install .