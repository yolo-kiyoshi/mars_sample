FROM python:3.6

ENV PYTHONUNBUFFERED=1

RUN apt-get update && apt-get install -y gcc

WORKDIR /app/src

COPY Pipfile Pipfile.lock ./

RUN pip install pipenv \
 && pipenv install --system
