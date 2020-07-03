FROM ubuntu:16.04

WORKDIR /app

RUN apt-get update && apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash && apt-get install -y nodejs
RUN apt-get purge -y --auto-remove curl
RUN rm -rf /var/lib/apt/lists/*

COPY frontend-example-docker .

RUN npm install
RUN npm install -g serve
EXPOSE 5000

RUN npm run build

RUN useradd -m app

RUN chown -R app:app /app

USER app

WORKDIR /app
ENTRYPOINT API_URL=http://localhost:8000 npm start