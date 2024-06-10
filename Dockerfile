FROM ruby:3.3.1

RUN apt-get update -qq && apt-get install -y build-essential default-libmysqlclient-dev git libvips pkg-config curl

RUN mkdir /app
WORKDIR /app

COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock

# RUN gem update --system

# RUN bundle update
RUN bundle install 

CMD bash