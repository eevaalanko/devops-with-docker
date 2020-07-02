FROM ubuntu:16.04

ENV FRONT_URL=http://localhost:5000
WORKDIR /app

RUN apt-get update && apt-get install -y curl python-software-properties
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash

RUN apt-get install -y nodejs

COPY backend-example-docker .
EXPOSE 8000
RUN npm install
RUN npm update caniuse-lite browserslist

RUN apt-get purge -y --auto-remove curl
RUN rm -rf /var/lib/apt/lists/*
RUN useradd -m app

RUN chown -R app:app /app

USER app

WORKDIR /app

CMD npm start