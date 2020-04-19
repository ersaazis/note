FROM python:3.7-slim-buster
WORKDIR /code
RUN sed -i "s#deb http://deb.debian.org/debian buster main#deb http://deb.debian.org/debian buster main contrib non-free#g" /etc/apt/sources.list \
    && apt-get update \
    && apt-get install -y --no-install-recommends --no-install-suggests \
      wget \
      gcc \
      xvfb \
      x11vnc \
      g++ \
      firefox-esr \
      firefoxdriver \
    && apt-get purge -y --auto-remove \
      gcc \
      g++ \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

CMD ["Xvfb","-br","-nolisten","tcp","-screen","0","800x600x24",":1"]
CMD ["x11vnc","-display",":1"]
