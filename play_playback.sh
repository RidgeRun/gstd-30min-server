#!/bin/sh

echo "========================"
echo "Playing playback pipeline"
echo "========================"

gst-client pipeline_play playback
gst-client element_set display src listen-to playback
