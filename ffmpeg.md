# FFMPEG

## Вырезать кусок видео

 ffmpeg -i input.mp4 -vcodec libx264 -ss 00:10:21 -to 00:10:28 output.mp4

## Склеить два видео в одно

ffmpeg -i worma.mp4 -acodec copy -vcodec copy -vbsf h264_mp4toannexb -f mpegts vid1.ts
ffmpeg -i duna2.mp4 -acodec copy -vcodec copy -vbsf h264_mp4toannexb -f mpegts vid2.ts
ffmpeg -i "concat:vid1.ts|vid2.ts" -vcodec copy -acodec copy out.mp4
