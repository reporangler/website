FROM ruby:3.2-alpine AS build

RUN apk add --no-cache build-base

WORKDIR /site

COPY Gemfile Gemfile.lock ./
RUN bundle install --jobs 4

COPY . .
RUN jekyll build

FROM nginx:stable-alpine

COPY --from=build /site/_site /usr/share/nginx/html

EXPOSE 80
