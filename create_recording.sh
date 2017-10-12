#!/bin/sh

echo "========================"
echo "Creating recording pipeline"
echo "========================"

gst-client pipeline_delete recording
gst-client pipeline_create recording \
interpipesrc name=src listen-to=camera accept-events=false accept-eos-event=false enable-sync=false ! \
omxh264enc ! h264parse ! \
mpegtsmux ! \
filesink location=/tmp/gstd_30min_server_recording.ts
