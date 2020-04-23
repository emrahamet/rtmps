FROM alpine:latest

RUN apk add --no-cache stunnel \
    && mkdir -p /var/log/stunnel /var/run/stunnel \
    && chown -vR stunnel:stunnel /var/log/stunnel /var/run/stunnel \
    && mv -v /etc/stunnel/stunnel.conf /etc/stunnel/stunnel.conf.orginal
COPY stunnel.conf /etc/stunnel/stunnel.conf
CMD ["stunnel"]