FROM ruby:3.2.2-bullseye
WORKDIR /workspace
COPY . /workspace
RUN bundle install
