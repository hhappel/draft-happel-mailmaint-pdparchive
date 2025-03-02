#!/bin/bash
if [ -z "$1" ]; then
    echo "Please set draft file"
    exit 1;
fi

# Find "value" in md file
FNAME=$(grep "^value" $1 | awk -F" = " '{ print $2 }' | tr -d '"')
echo "Building version: $FNAME"

if [ -z "$FNAME" ]; then
    echo "Could not file draft name in file"
    exit 1;
fi

# Create dist dir
if [ ! -d "dist" ]; then
  mkdir dist
fi

/opt/bin/mmark $1 > dist/$FNAME.xml
xml2rfc --v3 dist/$FNAME.xml --pdf
