FROM alpine

RUN apk add ansible
RUN apk terraform


COPY entrypoint.sh /srv/entrypoint.sh

ENTRYPOINT [ "/srv/entrypoint.sh" ]