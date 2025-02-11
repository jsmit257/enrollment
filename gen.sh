#!/bin/sh

cd "`dirname "$0"`"

sed -e '1,/<!-- import widget here -->/ !d' index.html | sed '$ d'
cat widget.html
sed -e '1,/<!-- import widget here -->/ d' index.html | sed '1 d'
