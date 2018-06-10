FROM ubuntu:14.04

ENV uid 1000
ENV gid 1000
ENV URL RTCP_URL

RUN useradd -m vlc; \
    apt-get update; \
    apt-get install -y vlc; \
    rm -rf /var/lib/apt/lists/*

COPY vlc.sh /tmp/
RUN chmod a+x /tmp/vlc.sh
EXPOSE 8083
USER vlc
ENTRYPOINT ["/tmp/vlc.sh"]
