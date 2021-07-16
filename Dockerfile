FROM ruby:2.4.1

ADD Gemfile /app/
ADD Gemfile.lock /app/
WORKDIR /app
RUN bundle install
ADD . /app

#EXPOSE 5000
#CMD echo $PORT
CMD bundle exec rackup --host 0.0.0.0 -p $PORT
#CMD ["bundle", "exec", "rackup", "--host", "0.0.0.0", "-p", $PORT]
