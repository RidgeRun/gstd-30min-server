#!/bin/sh

echo "========================"
echo "Creating snapshot pipeline"
echo "========================"

gst-client pipeline_delete snapshot
gst-client pipeline_create snapshot \
interpipesrc name=src num-buffers=1 listen-to=camera accept-events=false accept-eos-event=false enable-sync=false ! \
nvjpegenc ! multifilesink location="/tmp/gstd_30min_server_snapshot%d.jpeg"
