FROM python:3.8-buster
ENV PYTHONUNBUFFERED=1

RUN apt-get update && apt-get install -y \
    build-essential \
    locales \
    zip \
    vim \
    unzip \
    git \
    curl \
    libpq-dev && \
    apt-get clean

WORKDIR /code

COPY requirements.txt /code

RUN python -m pip install --upgrade pip && pip install -r requirements.txt

