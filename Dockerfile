FROM node:10.14.1-alpine

RUN apk --no-cache add git
ENV BLUEBIRD_DEBUG=0
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
