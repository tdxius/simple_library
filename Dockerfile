FROM ruby:2.6.3

ENV APP_HOME=/app

WORKDIR $APP_HOME

RUN mkdir -p $APP_HOME

RUN apt-get update && apt-get install build-essential nodejs bash cmake postgresql-client pkg-config -y

COPY Gemfile* $APP_HOME/

RUN gem install bundler -v 2.1.4

RUN bundler install

COPY . $APP_HOME/

CMD ["sh", "start.sh"]