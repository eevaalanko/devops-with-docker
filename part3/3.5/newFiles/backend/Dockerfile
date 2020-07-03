FROM node:6-alpine

ENV FRONT_URL=http://localhost:5000
WORKDIR /app
COPY backend-example-docker .
EXPOSE 8000
RUN npm install
RUN adduser -D app
RUN chown -R app:app /app

USER app

WORKDIR /app

CMD npm start