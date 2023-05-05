FROM ruby:3.2.2

ENV LANG=C.UTF-8
ENV APP_ROOT=/app

WORKDIR ${APP_ROOT}

COPY Gemfile Gemfile.lock ${APP_ROOT}/

RUN bundle config set --local path 'vendor/bundle' && \
  bundle install
