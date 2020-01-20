#!/bin/bash 

# Setup environment for ACE toolkit
. /opt/IBM/ace-11.0.0.7/server/bin/mqsiprofile

APP_NAME=${PWD##*/}

echo $APP_NAME

if ! ( pgrep -x Xvfb > /dev/null || pgrep -x Xorg > /dev/null ); then
	# Xvfb isn't running let's start it
        Xvfb :99 &
fi

if ! [ -n "$DISPLAY" ]; then
	export DISPLAY=:99
fi

cd ..

mqsicreatebar -data `pwd` -b $APP_NAME/mybar.bar -a $APP_NAME


