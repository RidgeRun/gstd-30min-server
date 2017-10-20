#!/bin/sh

echo "========================"
echo "Stoping display pipeline"
echo "========================"

gst-client element_set display display listen-to camera
gst-client element_set snapshot snapshot listen-to camera
gst-client element_set streaming streaming listen-to camera
gst-client element_set recording recording listen-to camera
gst-client pipeline_stop playback

# Mux wont play again
./12_create_playback.sh
