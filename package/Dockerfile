FROM alpine

RUN apk update && \
    apk add --no-cache bash iputils

COPY entrypoint.sh /bin/
ENTRYPOINT [ "/bin/entrypoint.sh" ]
