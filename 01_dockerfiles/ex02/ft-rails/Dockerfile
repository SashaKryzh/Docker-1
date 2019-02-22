FROM ruby

RUN	apt-get update && \
	apt-get install -y build-essential libpq-dev nodejs sqlite3

# Copy app-dir to the container and dip in it.
ONBUILD COPY app /opt/app
ONBUILD WORKDIR /opt/app

# Install the gems specified in Gemfile.
ONBUILD RUN bundle install

# Migrate and populate db.
ONBUILD RUN rails db:migrate
ONBUILD RUN rails db:seed

# Build from ex02 folder.
# docker build -t ft-rails:on-build ft-rails
