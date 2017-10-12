#!/bin/sh

echo "========================"
echo "Playing snapshot pipeline"
echo "========================"

gst-client pipeline_play snapshot
gst-client bus_filter snapshot eos
gst-client bus_read snapshot
gst-client event_flush_start snapshot
gst-client event_flush_stop snapshot false
gst-client pipeline_stop snapshot
