FROM nginx

COPY etc/default.conf .
COPY html /usr/share/nginx/html

CMD /bin/bash -c "envsubst < default.conf > /etc/nginx/conf.d/default.conf && exec nginx -g 'daemon off;'"