#!/bin/bash

BUILD=build
if [ -d "$BUILD" ]; then
  echo "$BUILD is ready"
else
  mkdir $BUILD
fi

rm -rf $BUILD/audio_*

for freq in 1000 2000 3000 4000 5000
do
   ffmpeg -f lavfi -i "sine=frequency=$freq:sample_rate=48000:duration=600" -ac 2 -c:a aac -b:a 128k $BUILD/audio_$freq.mp4
done

