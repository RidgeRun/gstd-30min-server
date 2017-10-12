#!/bin/sh

echo "========================"
echo "Stoping recording pipeline"
echo "========================"

gst-client event_eos recording
gst-client bus_filter recording eos
gst-client bus_read recording
gst-client pipeline_stop recording

