FROM ruby:2.5.1

RUN apt-get update \
    && apt-get install curl gnupg -yq \
    && curl -sL https://deb.nodesource.com/setup_8.x | bash \
    && apt-get install nodejs net-tools -yq \
    && mkdir -p /home/site/School-Planner

VOLUME ["/School-Planner"]
# EXPOSE 3000

WORKDIR /tmp
COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock
RUN bundle install

WORKDIR /School-Planner
ADD . .
COPY config/application.rb config/application.rb
