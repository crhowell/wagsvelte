FROM nginx:stable-alpine

RUN rm /etc/nginx/conf.d/default.conf

COPY ./docker/nginx/include.websocket /etc/nginx/app/include.websocket
COPY ./docker/nginx/include.forwarded /etc/nginx/app/include.forwarded
COPY ./docker/nginx/nginx.conf /etc/nginx/conf.d
