FROM octohost/ruby-1.9.3p194

RUN mkdir /srv/www
ADD . /srv/www
RUN cd /srv/www; bundle install;

EXPOSE 4000

CMD cd /srv/www; bundle exec rake preview
