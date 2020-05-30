FROM node:10.14.1-alpine

RUN apk --no-cache add git
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
