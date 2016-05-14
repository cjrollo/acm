FROM ubuntu:14.04

# Install Ruby and Rails dependencies
RUN apt-get update && apt-get install -y \
  ruby \
  ruby-dev \
  build-essential \
  libxml2-dev \
  libxslt1-dev \
  zlib1g-dev \
  libsqlite3-dev \
  nodejs

# Install Rails
RUN gem install rails

# Create a new Rails app under /src/my-app
RUN mkdir -p /src && cd /src && rails new my-app
WORKDIR /src/my-app

# Default command is to run a rails server on port 3000
CMD ["rails", "server", "--binding", "0.0.0.0", "--port", "3000"]
EXPOSE 3000
