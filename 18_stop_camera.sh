#!/bin/sh

echo "========================"
echo "Stoping camera pipeline"
echo "========================"

gst-client pipeline_stop camera
