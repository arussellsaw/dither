#!/bin/zsh

file=$1
palette=$2
width=$3
steps=$4
tmpname=${file%.*}-${palette%.*}

echo $file $palette

convert $file \
  -resize ${width}x \
  +dither /tmp/resized${tmpname}.png

convert /tmp/resized${tmpname}.png \
  -define dither:diffusion-amount=${diffusion}% \
  -ordered-dither o8x8,$steps \
  -remap palettes/$palette \
  /tmp/remapped${tmpname}.png

convert /tmp/remapped${tmpname}.png \
  -scale 3840x \
  -quality 100 \
  ${file%.*}-${palette%.*}-${steps}.png
