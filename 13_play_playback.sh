#!/bin/sh

echo "========================"
echo "Playing playback pipeline"
echo "========================"

gst-client pipeline_play playback
gst-client element_set display display listen-to playback
gst-client element_set snapshot snapshot listen-to playback
gst-client element_set streaming streaming listen-to playback
gst-client element_set recording recording listen-to playback
