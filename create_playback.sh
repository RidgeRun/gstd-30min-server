#!/bin/sh

echo "========================"
echo "Creating playback pipeline"
echo "========================"

gst-client pipeline_delete playback
gst-client pipeline_create playback \
filesrc location=/tmp/gstd_30min_server_recording.mp4 ! \
qtdemux ! \
h264parse ! \
avdec_h264 ! \
video/x-raw,format=I420,width=1920,height=1080 ! \
interpipesink caps=video/x-raw,format=I420,width=1920,height=1080 \
name=playback sync=true forward-events=false forward-eos=false
