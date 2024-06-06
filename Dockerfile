FROM ruby:3.3.1

RUN apt-get update -qq && apt-get install -y build-essential default-libmysqlclient-dev git libvips pkg-config curl

RUN mkdir /app
WORKDIR /app

RUN gem update --system

COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock

RUN bundle update --bundler
RUN bundle install 

CMD bash