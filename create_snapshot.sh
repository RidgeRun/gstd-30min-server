#!/bin/sh

echo "========================"
echo "Creating snapshot pipeline"
echo "========================"

gst-client pipeline_delete snapshot
gst-client pipeline_create snapshot \
interpipesrc listen-to=camera accept-events=false accept-eos-event=false enable-sync=false ! \
nvjpegenc ! multifilesink location=gstd_30min_server_snapshot%d.jpeg
