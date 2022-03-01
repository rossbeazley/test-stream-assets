#!/bin/bash

BUILD=build
if [ -d "$BUILD" ]; then
  echo "$BUILD is ready"
else
  mkdir $BUILD
fi

rm -rf $BUILD/video_*

for elem in "red","640x360" "blue","852x480" "yellow","1280x720" "indigo","1920x1080"
do 
    IFS=',' read -a strarr <<< "${elem}"
    ffmpeg -f lavfi -i color=${strarr[0]}:${strarr[1]}:d=600:rate=25,format=pix_fmts=yuv420p -c:v libx264 -profile:v main -level:v 3.0 $BUILD/video_${strarr[0]}_${strarr[1]}.mp4
done

FFMPEG_CMD=""
for elem in "red","0.0" "blue","3.84" "yellow","7.68" "indigo","11.52" "cyan","15.36" "lime","19.2"
do 
    IFS=',' read -a strarr <<< "${elem}"
    FFMPEG_CMD+=",sendcmd=c='${strarr[1]} color c ${strarr[0]}'"
done
    
CMD="ffmpeg -f lavfi -i color=s=640x360:d=600:rate=25,format=pix_fmts=yuv420p$FFMPEG_CMD -c:v libx264 -profile:v main -level:v 3.0 $BUILD/video_colourchange_640x360.mp4"

eval $CMD

