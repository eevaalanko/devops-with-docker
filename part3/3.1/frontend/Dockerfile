FROM ubuntu:16.04

RUN apt-get update && apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash && apt-get install -y nodejs
WORKDIR /frontend-example-docker
COPY . .

RUN npm install
RUN npm install -g serve
EXPOSE 5000

RUN apt-get purge -y --auto-remove curl
RUN rm -rf /var/lib/apt/lists/*

ENV API_URL=http://localhost:3456
RUN npm run build
CMD serve -s -l 5000 dist