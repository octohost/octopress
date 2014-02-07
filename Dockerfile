FROM octohost/octopress-nginx

WORKDIR /srv/www

ADD . /srv/www/
RUN rake generate

EXPOSE 80

CMD nginx