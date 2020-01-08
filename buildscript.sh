#!/bin/bash 


. /opt/IBM/ace-11.0.0.7/server/bin/mqsiprofile

APP_NAME=${PWD##*/}

echo $APP_NAME

cd ..

mqsicreatebar -data `pwd` -b mybar.bar -a $APP_NAME


