#!/bin/sh

echo "========================"
echo "Creating streaming pipeline"
echo "========================"

gst-client pipeline_delete streaming
gst-client pipeline_create streaming \
interpipesrc name=src format=time listen-to=camera accept-events=false accept-eos-event=false enable-sync=false \
caps="video/x-raw,width=1920,height=1080,format=I420,framerate=30/1" ! \
omxvp8enc iframeinterval=10 ! \
video/x-vp8,mapping=/ridgerun ! \
rtspsink service=54321
