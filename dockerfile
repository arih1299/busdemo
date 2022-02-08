FROM nginx:1.21.5-alpine

WORKDIR /usr/share/nginx/html/bus/resources
COPY config.sh .
COPY html /usr/share/nginx/html
RUN ["chmod", "+x", "./config.sh"]
CMD ["sh","./config.sh"]