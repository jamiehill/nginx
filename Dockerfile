FROM nginx
MAINTAINER James Hill <jhill@amelco.co.uk>

ADD sites-enabled/ /etc/nginx/sites-enabled/
ADD app/ /app/

EXPOSE 80