#!/bin/sh

echo "========================"
echo "Creating recording pipeline"
echo "========================"

gst-client pipeline_delete recording
gst-client pipeline_create recording \
interpipesrc name=src format=time listen-to=camera accept-events=false accept-eos-event=false enable-sync=false \
caps="video/x-raw,width=1920,height=1080,format=I420,framerate=30/1" ! \
omxh264enc iframeinterval=30 SliceIntraRefreshInterval=5 SliceIntraRefreshEnable=true ! h264parse ! \
mp4mux dts-method=2 ! \
filesink location=/tmp/gstd_30min_server_recording.mp4
