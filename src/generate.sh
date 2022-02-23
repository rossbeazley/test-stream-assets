#!/bin/bash

mkdir build

for elem in "red","640x360" "blue","852x480" "yellow","1280x720" "indigo","1920x1080"
do 
    IFS=',' read -a strarr <<< "${elem}"
    ffmpeg -f lavfi -i color=${strarr[0]}:${strarr[1]}:d=600:rate=25,format=rgb24 build/video_${strarr[0]}_${strarr[1]}.mp4
done

for freq in 1000 2000 3000 4000 5000
do
   ffmpeg -f lavfi -i "sine=frequency=$freq:sample_rate=48000:duration=600" -ac 2 -c:a aac -b:a 128k build/audio_$freq.mp4
done

