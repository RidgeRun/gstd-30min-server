#!/bin/sh

echo "========================"
echo "Trick play backwards"
echo "========================"

# Need the quotes for to escape the -
gstd-client "event_seek playback -1"

