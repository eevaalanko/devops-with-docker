FROM ruby:2.6.0 as build-stage

WORKDIR /app
COPY rails-example-project .
RUN apt-get update && apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get install -y nodejs
RUN npm install yarn -g
RUN bundle install
RUN rails db:migrate
RUN rake assets:precompile

FROM ruby:2.6.0

COPY --from=build-stage /app /app

RUN useradd -m app

RUN chown -R app:app /app

USER app

EXPOSE 3000
CMD rails s