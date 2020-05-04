# BackgroundStream

**Video wallpaper = xwinwrap + streamlink + mpv.**

Video wallpaper is a combo of xwinwrap (send video stream to X11) , streamlink (open video stream with a player) and mpv (player use to read video stream)

## Specification

- `livestream.sh`: Open stream with `streamlink`
- `livebackground.sh`: Open stream and send it to X11
- `selectAndRun.sh`: Select stream by [id] and send it to X11
- `[id]`: Parameter of `selectedAndRun.sh` saved in `livestream.id` and used by `livestream.sh`
- `*.pid`: Kill current process before start a new one

## Install

### Copy files to you install directory

### Update 'livevars.sh'

Update `BG_HOME` to your install directory.

`BG_HOME="/home/desktop/Applications/BackgroundStream"`

## Menu example (tested in with xfce)

`menu` directory contains `index.menu` which is an example to create a list of video stream for your wallpaper.

## Execution

### Test

`. ./livebackground.sh`

### Select a stream

`. ./selectAndRun.sh [id]`

- id:
id set in `livestream.sh`
