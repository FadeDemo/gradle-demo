#!/bin/bash

echo -n "Please enter the directory name:"
read DIRECTORY
if test -d $DIRECTORY;
then
  echo -n "Directory is already existed! Would you like to override it (y/n) : "
  read OVERRIDE
  if test $OVERRIDE = 'y';
  then
    cd $DIRECTORY
  else
    exit 0
  fi  
else
  mkdir $DIRECTORY
  cd $DIRECTORY  
fi    
gradle init