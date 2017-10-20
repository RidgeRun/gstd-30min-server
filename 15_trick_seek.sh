#!/bin/sh

echo "========================"
echo "Trick play seek to beggining"
echo "========================"

gst-client event_seek playback 1.0
