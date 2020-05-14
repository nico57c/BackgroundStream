#!/bin/bash
# ---------------------------------------
# INSTALLATION TOOL for Background Stream
# ---------------------------------------
#

InstallDir=$1
WorkingDir=`dirname $0`
ScriptTxtDir="/home/desktop/Applications/BackgroundStream"

echo "--------------"
echo "Installation :"
echo "  - install directory : $InstallDir"
echo "  - working directroy : $WorkingDir"
echo "  - script text : $ScriptTxtDir"
echo "--------------"
echo ""


if [[ "" != "$InstallDir" && -d "$InstallDir" ]]; then

  cp $WorkingDir/* $InstallDir -r

  echo "Replace HOME variable in livevars file."
  sed -i "s+$ScriptTxtDir+$InstallDir+g" $InstallDir/livevars.sh 

  echo "Replace filename in menu xml and desktop files."
  ls -1 $WorkingDir/menu/ | xargs -I % sed -i "s+$ScriptTxtDir+$InstallDir+g" $InstallDir/menu/%

else
  echo "Install directory has not been found"
fi
