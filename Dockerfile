FROM nginx
MAINTAINER James Hill <jhill@amelco.co.uk>

ADD docker/sites-enabled/ /etc/nginx/sites-enabled/
ADD app/ /app/

EXPOSE 80