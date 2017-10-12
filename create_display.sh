#!/bin/sh

echo "========================"
echo "Creating display pipeline"
echo "========================"

gst-client pipeline_delete display
gst-client pipeline_create display \
interpipesrc listen-to=camera accept-events=false accept-eos-event=false enable-sync=false ! \
nvoverlaysink sync=false async=false
