FROM ruby:2.3

WORKDIR /app

# For that vanilla Rails application, we need nodejs installed.
RUN apt-get update && apt-get install -y \
    nodejs \
 && rm -rf /var/lib/apt/lists/*

# Install gems inside the image
COPY Gemfile Gemfile.lock ./
RUN bundle install -j2

# Copy the main application inside the image.
COPY . /app/

# We want the port 3000 of the container to be exposed to the outside world.
EXPOSE 3000

CMD ["rails", "server"]
