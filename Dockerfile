FROM octohost/ruby-1.9.3p194

RUN curl https://raw.github.com/octohost/octopress/master/Gemfile > /var/www/Gemfile
RUN cd /srv/www; bundle install; rm Gemfile
ADD . /srv/www

EXPOSE 4000

CMD ["/usr/local/bin/foreman","start","-d","/srv/www"]
