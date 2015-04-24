FROM dock0/service
MAINTAINER akerl <me@lesaker.org>
RUN pacman -S --noconfirm --needed ruby
ADD source /opt/committed
ADD run /service/committed/run
RUN gem install bundler
RUN bundle install --gemfile /opt/committed/Gemfile.lock
