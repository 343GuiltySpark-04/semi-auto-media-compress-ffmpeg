#!/bin/bash


#Replace .mp4 and *.mp4 with the extension of your choice.
orig_name=$(basename -s .mp4 *.mp4)

#Same as above
out_name="${orig_name}-compressed.mp4"

#if running via WSL2 using a windows version of ffmpeg add a .exe to ffmpeg
ffmpeg -i *.mp4 $out_name

#again feel free to change the extenstion :)
mv -v *-compressed.mp4 ./out

mv -v *.mp4 ./original
