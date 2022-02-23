#!/bin/bash
# https://google.github.io/shaka-packager/html/tutorials/dash.html
rm -rf dist
shaka/packager-osx-x64 \
  'in=src/text.vtt,stream=text,init_segment=dist/text/init.mp4,segment_template=dist/text/$Number$.m4s' \
  \
  'in=build/audio_1000.mp4,stream=audio,language=en,init_segment=dist/audio/1000hz/init.mp4,segment_template=dist/audio/1000hz/$Number$.m4s' \
  'in=build/audio_2000.mp4,stream=audio,language=it,init_segment=dist/audio/2000hz/init.mp4,segment_template=dist/audio/2000hz/$Number$.m4s' \
  'in=build/audio_3000.mp4,stream=audio,language=de,init_segment=dist/audio/3000hz/init.mp4,segment_template=dist/audio/3000hz/$Number$.m4s' \
  'in=build/audio_4000.mp4,stream=audio,language=fr,init_segment=dist/audio/4000hz/init.mp4,segment_template=dist/audio/4000hz/$Number$.m4s' \
  'in=build/audio_5000.mp4,stream=audio,language=da,init_segment=dist/audio/5000hz/init.mp4,segment_template=dist/audio/5000hz/$Number$.m4s' \
   \
  'in=build/video_red_640x360.mp4,stream=video,init_segment=dist/video/360p/init.mp4,segment_template=dist/video/360p/$Number$.m4s' \
  'in=build/video_blue_852x480.mp4,stream=video,init_segment=dist/video/480p/init.mp4,segment_template=dist/video/480p/$Number$.m4s' \
  'in=build/video_yellow_1280x720.mp4,stream=video,init_segment=dist/video/720p/init.mp4,segment_template=dist/video/720p/$Number$.m4s' \
  'in=build/video_indigo_1920x1080.mp4,stream=video,init_segment=dist/video/1080p/init.mp4,segment_template=dist/video/1080p/$Number$.m4s' \
  --segment_duration 3.84 \
  --generate_static_live_mpd \
  --mpd_output dist/manifest.mpd

