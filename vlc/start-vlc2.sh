#!/bin/bash
#/usr/bin/vlc -I dummy --loop $URL --sout '#transcode{vcodec=h264,acodec=none}:http{mux=ts,dst=:8083/camera.mp4,access=http}' --sout-keep
/usr/bin/vlc -I dummy --loop $URL --sout '#transcode{vcodec=theo,vb=800,scale=1,acodec=vorb,ab=128,channels=2,samplerate=44100}:http{mux=ogg,dst=:8083/camera.mp4}' --sout-keep
