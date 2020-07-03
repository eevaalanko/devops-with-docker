FROM node:8-alpine as build-stage

WORKDIR /app
EXPOSE 5000

COPY frontend-example-docker .

RUN npm install

RUN npm run build

FROM node:8-alpine

COPY --from=build-stage /app /app

RUN adduser -D app && chown -R app:app /app

USER app

ENTRYPOINT API_URL=http://localhost:8000 npm start