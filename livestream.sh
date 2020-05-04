#!/usr/bin/env sh

. `dirname $0`/livevars.sh
echo $$ > $LIVE_STREAM_PID

case "$1" in

"canada_manitoba__aurora_borealis")
exec streamlink -p "mpv --hwdec=vaapi --vo=vaapi --no-audio --wid=$2" https://youtu.be/CwriDd8STdI best
;;

"canada_saguenay__la_baie")
exec streamlink -p "mpv --hwdec=vaapi --vo=vaapi --no-audio --wid=$2" https://youtu.be/VvZFRbo2KIg best
;;

"usa_california__santa_monica")
exec streamlink -p "mpv --hwdec=vaapi --vo=vaapi --no-audio --wid=$2" https://youtu.be/OWbI6WtlI-k best
;;

"usa_california__homewood_mountain__lake_tahoe")
exec streamlink -p "mpv --hwdec=vaapi --vo=vaapi --no-audio --wid=$2" https://youtu.be/uDzmE7ieP7A best
;;

"usa_california__santa_cruz__mount_diablo")
exec streamlink -p "mpv --hwdec=vaapi --vo=vaapi --no-audio --wid=$2" https://youtu.be/AlthfCT2j7Q best
;;

"ISS" | *)
exec streamlink -p "mpv --hwdec=vaapi --vo=vaapi --no-audio --wid=$2" https://www.ustream.tv/channel/iss-hdev-payload best
;;

esac

