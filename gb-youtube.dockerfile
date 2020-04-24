FROM debian:buster-slim

RUN apt-get update \
    && apt-get install -y --no-install-recommends --no-install-suggests \
       firefox-esr x11vnc xvfb \
    && apt-get clean 

COPY run.sh /code/run.sh
ADD data /root/data
CMD ["/bin/bash","/code/run.sh"]
