FROM octohost/ruby-1.9.3p194

RUN apt-get install -y curl ruby1.9.1-dev --force-yes
RUN apt-get install -y make --force-yes
RUN mkdir /srv/www
RUN curl https://raw.github.com/octohost/octopress/master/Gemfile > /srv/www/Gemfile
RUN cd /srv/www; bundle install; rm Gemfile
ADD . /srv/www

EXPOSE 4000

CMD ["/usr/local/bin/foreman","start","-d","/srv/www"]
