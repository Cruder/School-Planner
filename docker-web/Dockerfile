FROM ruby:2.5.1

RUN apt-get update
RUN apt-get -y install nodejs net-tools

# RUN mkdir -p /home/site/School-Planner
VOLUME ["/School-Planner"]
# EXPOSE 3000

WORKDIR /tmp
COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock
RUN bundle install

WORKDIR /School-Planner
ADD . .
COPY config/application.rb config/application.rb

#RUN bundle install
# CMD ["rails","server","-b","0.0.0.0"]
