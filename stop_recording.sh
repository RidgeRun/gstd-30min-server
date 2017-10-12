#!/bin/sh

echo "========================"
echo "Stoping recording pipeline"
echo "========================"

gst-client pipeline_stop recording
