# syntax=docker/dockerfile:1
FROM ruby:3.0.3
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
WORKDIR /movie-app
COPY Gemfile /movie-app/Gemfile
COPY Gemfile.lock /movie-app/Gemfile.lock
RUN bundle install

# Add a script to be executed every time the container starts.
ADD entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
EXPOSE 3000

# Configure the main process to run when running the image
CMD ["rails", "server", "-b", "0.0.0.0"]