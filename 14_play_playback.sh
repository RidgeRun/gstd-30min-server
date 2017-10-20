#!/bin/sh

echo "========================"
echo "Playing playback pipeline"
echo "========================"

gst-client pipeline_play playback
gst-client element_set display src listen-to playback
gst-client element_set snapshot src listen-to playback
gst-client element_set streaming src listen-to playback
gst-client element_set recording src listen-to playback
