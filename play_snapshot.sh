#!/bin/sh

echo "========================"
echo "Playing snapshot pipeline"
echo "========================"

gst-client bus_filter snapshot eos
gst-client pipeline_play snapshot
gst-client bus_read snapshot
gst-client pipeline_stop snapshot
