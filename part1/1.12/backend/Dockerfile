FROM ubuntu:16.04

RUN apt-get update && apt-get install -y curl python-software-properties
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt-get install -y nodejs



COPY . .
EXPOSE 8000
RUN npm install

ENV FRONT_URL=http://localhost:3457
CMD npm start