#!/bin/sh

echo "========================"
echo "Creating camera pipeline"
echo "========================"

gst-client pipeline_delete camera
gst-client pipeline_create camera \
nvcamerasrc ! video/x-raw\(memory:NVMM\),width=1920,height=1080,format=I420,framerate=30/1 ! \
nvvidconv ! video/x-raw ! \
interpipesink name=camera sync=false

