# Run a "hello world" grape api

FROM phusion/passenger-ruby21:latest

MAINTAINER Marcel Scherf

ENV HOME /root

# enable nginx
RUN rm -f /etc/service/nginx/down

# remove default nginx site
RUN rm -rf /etc/nginx/sites-enabled/default

ADD webapp.conf /etc/nginx/sites-enabled/webapp.conf
RUN mkdir /home/app/webapp

ADD . /home/app/webapp
WORKDIR /home/app/webapp

RUN bundle install

CMD ["/sbin/my_init"]
