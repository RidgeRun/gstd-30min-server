#!/bin/sh

echo "========================"
echo "Stoping display pipeline"
echo "========================"

gst-client element_set display src listen-to camera
gst-client element_set snapshot src listen-to camera
gst-client element_set streaming src listen-to camera
gst-client element_set reacording src listen-to camera
gst-client pipeline_stop playback

# Mux wont play again
./create_playback.sh
