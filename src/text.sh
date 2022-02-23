#!/bin/bash

BUILD=build
if [ -d "$BUILD" ]; then
  echo "$BUILD is ready"
else
  mkdir $BUILD
fi

rm -rf $BUILD/text_*

for colour in "red" "blue" "yellow" "magenta" "lime"
do
echo "generating $colour"

cat <<EOT >> $BUILD/text_$colour.vtt
WEBVTT

00:00:00.000 --> 00:10:00.000
<c.$colour.bg_$colour>>xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx</c>
<c.$colour.bg_$colour>>xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx</c>
<c.$colour.bg_$colour>>xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx</c>
<c.$colour.bg_$colour>>xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx</c>
<c.$colour.bg_$colour>>xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx</c>

EOT
 
done


