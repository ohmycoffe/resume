# Use an official Ruby image (Debian-based)
FROM ruby:3.2-slim

# Install required system dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy Gemfile and Gemfile.lock first for caching
COPY Gemfile Gemfile.lock ./

# Install Bundler and dependencies
RUN gem install bundler:2.4.22 && \
    bundle install

# Copy the rest of your site
COPY . .

# Expose the default Jekyll port
EXPOSE 4000

# Default command: serve with live reload and watching
CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0", "--port", "4000", "--watch"]
