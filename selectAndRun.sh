#!/bin/bash

. `dirname $0`/livevars.sh

echo "$1" > $LIVE_STREAM_ID_FILE
exec $BG_STREAM
