#!/bin/bash
# Console Colors
bp=$( dirname "${BASH_SOURCE[0]}");
r="[31m";
g="[32m";
d="[39m";
y="[33m";

echo "$y"========================"$d"
echo "$y"= "$g"External tar updater "$y"="$d"
echo "$y"========================"$d"

if [ "$1" = "" ] || [ "$2" = "" ]
then
  echo "$r"Param path to directory or path to tar file does not exist! "$g"${0} /path/to/dir link"$d"
  exit;
fi

if [ ! -d $1 ] ; then
    mkdir -p $1
fi

echo $1;

rm -R $1/*

curl -L -k $2 | tar -xJ -C $1

echo $g"Done."$d

