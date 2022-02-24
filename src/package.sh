#!/bin/bash
# https://google.github.io/shaka-packager/html/tutorials/dash.html
rm -rf dist

shaka/packager-osx-x64 \
  'in=build/text_red.vtt,stream=text,language=en,init_segment=dist/abr/text/red/init.mp4,segment_template=dist/abr/text/red/$Number$.m4s' \
  'in=build/text_blue.vtt,stream=text,language=it,init_segment=dist/abr/text/blue/init.mp4,segment_template=dist/abr/text/blue/$Number$.m4s' \
  'in=build/text_yellow.vtt,stream=text,language=de,init_segment=dist/abr/text/yellow/init.mp4,segment_template=dist/abr/text/yellow/$Number$.m4s' \
  'in=build/text_magenta.vtt,stream=text,language=fr,init_segment=dist/abr/text/magenta/init.mp4,segment_template=dist/abr/text/magenta/$Number$.m4s' \
  'in=build/text_lime.vtt,stream=text,language=da,init_segment=dist/abr/text/lime/init.mp4,segment_template=dist/abr/text/lime/$Number$.m4s' \
  \
  'in=build/audio_1000.mp4,stream=audio,language=en,init_segment=dist/abr/audio/1000hz/init.mp4,segment_template=dist/abr/audio/1000hz/$Number$.m4s' \
  'in=build/audio_2000.mp4,stream=audio,language=it,init_segment=dist/abr/audio/2000hz/init.mp4,segment_template=dist/abr/audio/2000hz/$Number$.m4s' \
  'in=build/audio_3000.mp4,stream=audio,language=de,init_segment=dist/abr/audio/3000hz/init.mp4,segment_template=dist/abr/audio/3000hz/$Number$.m4s' \
  'in=build/audio_4000.mp4,stream=audio,language=fr,init_segment=dist/abr/audio/4000hz/init.mp4,segment_template=dist/abr/audio/4000hz/$Number$.m4s' \
  'in=build/audio_5000.mp4,stream=audio,language=da,init_segment=dist/abr/audio/5000hz/init.mp4,segment_template=dist/abr/audio/5000hz/$Number$.m4s' \
   \
  'in=build/video_red_640x360.mp4,stream=video,init_segment=dist/abr/video/360p/init.mp4,segment_template=dist/abr/video/360p/$Number$.m4s' \
  'in=build/video_blue_852x480.mp4,stream=video,init_segment=dist/abr/video/480p/init.mp4,segment_template=dist/abr/video/480p/$Number$.m4s' \
  'in=build/video_yellow_1280x720.mp4,stream=video,init_segment=dist/abr/video/720p/init.mp4,segment_template=dist/abr/video/720p/$Number$.m4s' \
  'in=build/video_indigo_1920x1080.mp4,stream=video,init_segment=dist/abr/video/1080p/init.mp4,segment_template=dist/abr/video/1080p/$Number$.m4s' \
  --segment_duration 3.84 \
  --generate_static_live_mpd \
  --mpd_output dist/abr/manifest.mpd

shaka/packager-osx-x64 \
  'in=build/text_red.vtt,stream=text,language=en,init_segment=dist/sbr/text/red/init.mp4,segment_template=dist/sbr/text/red/$Number$.m4s' \
  'in=build/text_blue.vtt,stream=text,language=it,init_segment=dist/sbr/text/blue/init.mp4,segment_template=dist/sbr/text/blue/$Number$.m4s' \
  'in=build/text_yellow.vtt,stream=text,language=de,init_segment=dist/sbr/text/yellow/init.mp4,segment_template=dist/sbr/text/yellow/$Number$.m4s' \
  'in=build/text_magenta.vtt,stream=text,language=fr,init_segment=dist/sbr/text/magenta/init.mp4,segment_template=dist/sbr/text/magenta/$Number$.m4s' \
  'in=build/text_lime.vtt,stream=text,language=da,init_segment=dist/sbr/text/lime/init.mp4,segment_template=dist/sbr/text/lime/$Number$.m4s' \
  \
  'in=build/audio_1000.mp4,stream=audio,language=en,init_segment=dist/sbr/audio/1000hz/init.mp4,segment_template=dist/sbr/audio/1000hz/$Number$.m4s' \
  'in=build/audio_2000.mp4,stream=audio,language=it,init_segment=dist/sbr/audio/2000hz/init.mp4,segment_template=dist/sbr/audio/2000hz/$Number$.m4s' \
  'in=build/audio_3000.mp4,stream=audio,language=de,init_segment=dist/sbr/audio/3000hz/init.mp4,segment_template=dist/sbr/audio/3000hz/$Number$.m4s' \
  'in=build/audio_4000.mp4,stream=audio,language=fr,init_segment=dist/sbr/audio/4000hz/init.mp4,segment_template=dist/sbr/audio/4000hz/$Number$.m4s' \
  'in=build/audio_5000.mp4,stream=audio,language=da,init_segment=dist/sbr/audio/5000hz/init.mp4,segment_template=dist/sbr/audio/5000hz/$Number$.m4s' \
   \
  'in=build/video_red_640x360.mp4,stream=video,init_segment=dist/sbr/video/360p/init.mp4,segment_template=dist/sbr/video/360p/$Number$.m4s' \
  --segment_duration 3.84 \
  --generate_static_live_mpd \
  --mpd_output dist/sbr/manifest.mpd


