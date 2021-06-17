FROM ruby:3.0.1-alpine

ENV APP_HOME /app/
ENV LIB_DIR lib/parallelism/

RUN apk add --update --no-cache bash build-base git
RUN mkdir -p $APP_HOME/$LIB_DIR

WORKDIR $APP_HOME
COPY Gemfile *gemspec $APP_HOME
COPY $LIB_DIR/version.rb $APP_HOME/$LIB_DIR

# RUN bundle install
