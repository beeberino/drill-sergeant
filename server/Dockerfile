FROM ruby:2.6.1

WORKDIR /app
RUN apt-get update && apt-get install -y vim build-essential
RUN apt-get install -y postgresql-client
COPY Gemfile Gemfile.lock ./
RUN bundle install
COPY . .

CMD ["rails", "server", "-b", "0.0.0.0"]