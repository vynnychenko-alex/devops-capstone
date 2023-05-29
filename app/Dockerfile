FROM nginx:mainline-alpine
RUN rm /etc/nginx/conf.d/*
COPY nginxapp.conf /etc/nginx/conf.d/
COPY index.html /usr/share/nginx/html/