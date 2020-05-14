#!/usr/bin/env sh

. `dirname $0`/livevars.sh

# kill -9 `cat $LIVE_STREAM_PID`
kill -9 `cat $BG_STREAM_PID`
sleep 4

echo $$ > $BG_STREAM_PID

if [ "$BG_STREAM_SHAPE" != "" ]; then

	exec xwinwrap -s  -un  -ni -b -nf -sh $BG_STREAM_SHAPE -g $BG_STREAM_SIZE -- $LIVE_STREAM $LIVE_STREAM_ID WID
else

	exec xwinwrap -fs -fdt -ni -b -nf -- $LIVE_STREAM $LIVE_STREAM_ID WID
fi
