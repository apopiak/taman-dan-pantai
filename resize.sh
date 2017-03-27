#! /usr/bin/env sh

IMAGES=`find ./content/images -name "*_big.jpg"` 

for image in $IMAGES
do
    new_name=`echo $image | sed -e "s/_big.jpg/.jpg/"`
    convert $image -resize 1920x1280 $new_name
done
