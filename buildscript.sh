#!/bin/bash 

# Setup environment for ACE toolkit
. /opt/IBM/ace-11.0.0.7/server/bin/mqsiprofile

APP_NAME=${PWD##*/}

echo $APP_NAME

SERVICE=Xvfb
if ! pgrep -x "$SERVICE" >/dev/null 
then
	# Xvfb isn't running let's start it
        Xvfb :99 &
	export DISPLAY=:99
fi

cd ..

mqsicreatebar -data `pwd` -b $APP_NAME/mybar.bar -a $APP_NAME


