FROM nginx:alpine

# Creating entrypoint
COPY docker/nginx/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

RUN mkdir -p /templates && mkdir -p /scripts
ADD docker/nginx/templates/default.conf.template /templates/default.conf.template

ENTRYPOINT ["docker-entrypoint.sh"]