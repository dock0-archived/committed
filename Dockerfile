FROM dock0/foreman
MAINTAINER akerl <me@lesaker.org>
RUN pacman -S --noconfirm --needed base-devel
ADD source /srv/app
RUN gem install --no-user-install bundler
RUN bundle install --gemfile /opt/committed/Gemfile
