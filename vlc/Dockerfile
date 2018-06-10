FROM ubuntu:14.04

#vlc -I dummy --loop rtsp://admin:16913525712lOl@109.188.89.240:554/streaming/channels/702 --sout '#transcode{vcodec=h264,vb=500,acodec=none}:http{mux=ts,dst=:8083/camera.mp4}' --sout-keep

#ENV VLCVERSION 2.1.6-0ubuntu14.04.1
ENV uid 1000
ENV gid 1000
ENV URL RTCP_URL

RUN useradd -m vlc; \
    apt-get update; \
    apt-get install -y vlc; \
    rm -rf /var/lib/apt/lists/*

COPY start-vlc2.sh /tmp/
RUN chmod a+x /tmp/start-vlc2.sh
EXPOSE 8083
USER vlc
ENTRYPOINT ["/tmp/start-vlc2.sh"]
