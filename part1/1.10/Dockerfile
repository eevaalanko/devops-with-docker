FROM ubuntu:16.04

RUN apt-get update && apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash && apt-get install -y nodejs
WORKDIR /frontend-example-docker
COPY src src
COPY util util
COPY package.json .
COPY package-lock.json .
COPY webpack.config.js .
RUN npm install
RUN npm install -g serve
EXPOSE 5000
CMD npm start

