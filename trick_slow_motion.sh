#!/bin/sh

echo "========================"
echo "Trick play slow motion"
echo "========================"

gstd-client "event_seek playback 0.5 3 1 1 0 1 -1"
