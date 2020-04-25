FROM python:3.7-alpine

RUN apk add --update --no-cache bash

COPY requirements.txt /root/
RUN apk add --no-cache --virtual .build-deps gcc python3-dev libffi-dev musl-dev \
    && pip install -r /root/requirements.txt \
    && apk del .build-deps \
    && rm -r /root/.cache

ENV DEVPI_SERVERDIR /devpi/server
ENV DEVPI_CLIENTDIR /devpi/client
ENV DEVPI_PORT 3141

RUN mkdir -p $DEVPI_SERVERDIR
RUN mkdir -p $DEVPI_CLIENTDIR

VOLUME $DEVPI_SERVERDIR $DEVPI_CLIENTDIR
EXPOSE $DEVPI_PORT

COPY serve.sh /root/

CMD ["/root/serve.sh"]
