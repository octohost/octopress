FROM octohost/ruby-1.9

RUN mkdir /srv/www
ADD . /srv/www
RUN cd /srv/www; bundle install --deployment

EXPOSE 4000

CMD cd /srv/www; bundle exec rake preview
