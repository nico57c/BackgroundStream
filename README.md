# BackgroundStream

**Video wallpaper = xwinwrap + streamlink + mpv.**

Video wallpaper is a combo of xwinwrap (send video stream to X11) , streamlink (open video stream with a player) and mpv (player use to read video stream)

## Specification

- `livestream.sh`: Open stream with `streamlink`
- `livebackground.sh`: Open stream and send it to X11
- `selectAndRun.sh`: Select stream by [id] and send it to X11
- `[id]`: Parameter of `selectedAndRun.sh` saved in `livestream.id` and used by `livestream.sh`
- `*.pid`: Used by `livebackground.sh` to kill current process before starta a new one
- `menu` : Example of xfce `Application Menu`
  - `*.desktop` : Shortcut item
  - `index.menu` : Application menu
- `pictures` : Preview of stream

## Install

### Copy files to install directory

### Update 'livevars.sh'

Update `BG_HOME` variable with your install directory.

`BG_HOME="/home/desktop/Applications/BackgroundStream"`

## Menu example (tested in with xfce)

Directory `menu` contains an example of xfce `Application Menu`.
- `*.desktop` : shortcut item
- `index.menu` : Application menu

## Execution

### Test

`. ./livebackground.sh`

### Select a stream

`. ./selectAndRun.sh [id]`

- `[id]`: parameter set in `livestream.sh`
