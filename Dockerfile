FROM ruby:2.3.3
RUN echo "deb http://deb.debian.org/debian jessie main" > /etc/apt/sources.list &&\
    echo "deb http://security.debian.org jessie/updates main" >> /etc/apt/sources.list &&\
    apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs mysql-client
RUN mkdir /workdir
WORKDIR /workdir
ADD Gemfile /workdir/Gemfile
ADD Gemfile.lock /workdir/Gemfile.lock
RUN bundle install
ADD . /workdir