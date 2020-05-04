#!/usr/bin/env sh

export BG_HOME="/home/desktop/Applications/BackgroundStream"

export BG_STREAM="$BG_HOME/livebackground.sh"
export BG_STREAM_PID="$BG_HOME/livebackground.pid"

export LIVE_STREAM="$BG_HOME/livestream.sh"

export LIVE_STREAM_ID_FILE="$BG_HOME/livestream.id"
export LIVE_STREAM_ID=`cat $LIVE_STREAM_ID_FILE`

export LIVE_STREAM_PID="$BG_HOME/livestream.pid"

