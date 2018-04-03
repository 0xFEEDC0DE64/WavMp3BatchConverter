#!/bin/bash

for f in *.wav
do
    ffmpeg -i "$f" -ab 320k -map_metadata 0 -id3v2_version 3 "${f%.wav}.mp3"
done
