#!/bin/bash 

# Setup environment for ACE toolkit
. /opt/IBM/ace-11.0.0.7/server/bin/mqsiprofile

APP_NAME=${PWD##*/}

echo $APP_NAME

cd ..

mqsicreatebar -data `pwd` -b $APP_NAME/mybar.bar -a $APP_NAME


