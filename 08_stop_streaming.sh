#!/bin/sh

echo "========================"
echo "Stoping streaming pipeline"
echo "========================"

gst-client pipeline_stop streaming
