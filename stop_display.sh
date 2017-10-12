#!/bin/sh

echo "========================"
echo "Stoping display pipeline"
echo "========================"

gst-client pipeline_stop display
