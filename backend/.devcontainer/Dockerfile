FROM ruby:3.2.1-slim

WORKDIR /backend

RUN apt-get update -qq \
  && apt-get install -y --no-install-recommends \
  git \
  g++ \
  libpq-dev \
  make \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

COPY Gemfile Gemfile.lock /backend/
RUN  bundle install

COPY . /backend/

COPY ./entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

EXPOSE 8080

CMD ["rails", "server", "-e", "-b", "0.0.0.0"]