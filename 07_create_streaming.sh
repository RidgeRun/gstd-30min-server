#!/bin/sh

echo "========================"
echo "Creating streaming pipeline"
echo "========================"

gst-client pipeline_delete streaming
gst-client pipeline_create streaming \
interpipesrc name=streaming format=time listen-to=camera accept-events=false accept-eos-event=false enable-sync=false allow-renegotiation=false ! \
omxvp8enc iframeinterval=10 ! \
video/x-vp8,mapping=/ridgerun ! \
rtspsink service=54321 appsink0::async=false
