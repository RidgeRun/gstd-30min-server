#!/bin/sh

echo "========================"
echo "Creating camera pipeline"
echo "========================"

gst-client pipeline_delete camera
gst-client pipeline_create camera \
nvcamerasrc ! video/x-raw\(memory:NVMM\),width=1920,height=1080 ! \
queue max-size-buffers=3 leaky=downstream ! \
nvvidconv ! video/x-raw ! \
interpipesink name=camera sync=true

