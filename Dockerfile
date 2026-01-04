FROM ruby:3.3-alpine

RUN apk add --no-cache \
    build-base \
    git \
    libffi-dev \
    yaml-dev

WORKDIR /site

ENV BUNDLE_PATH=vendor/bundle \
    BUNDLE_WITHOUT="development test" \
    JEKYLL_ENV=production

COPY Gemfile Gemfile.lock ./
RUN bundle install
COPY . .

RUN bundle exec jekyll build

