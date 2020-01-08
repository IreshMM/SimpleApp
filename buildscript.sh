#!/bin/bash 

APP_NAME=${PWD##*/}

echo $APP_NAME

cd ..

mqsicreatebar -data `pwd` -b mybar.bar -a $APP_NAME


