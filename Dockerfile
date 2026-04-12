FROM ruby:3.3-slim
WORKDIR /app
COPY Gemfile* ./
RUN bundle install
COPY . .
EXPOSE 9292
CMD ["bundle", "exec", "rackup", "-p", "9292", "-o", "0.0.0.0"]
