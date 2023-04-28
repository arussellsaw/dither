first install imagemagick with `brew install imagemagick`

add your photos to the directory

```
# args:
# image path
# palette (inside palettes/ dir)
# width
# color steps

./dither.sh {your image} gb.png 300 6
```

i get palettes from https://lospec.com/palette-list

![example](example.png)
![example](example-raw.jpg)
