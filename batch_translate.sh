#!/bin/bash

# Created by: Yogesh Khedar , y.khedar@tu-bs.de
# Script to warp all images in Bilder directory
# Translated images are put into Bilder/Translated and warped images in Bilder/Warped directory
# Make sure the above mentioned directory structure exist

# FILES=`ls Bilder/Input | grep -i .jpg | cut -d . -f 1`
# EXTENSION=`ls Bilder/Input | grep -i .jpg | head -1 | cut -d . -f 2`
# for input_bild in $FILES; do
#   translated=${input_bild}_translated.tif
#   warped=${input_bild}_rotated.tif
#   python creategtiff.py Bilder/Input/${input_bild}.$EXTENSION Bilder/Translated/$translated Bilder/Warped/$warped
#   gdal_translate -a_nodata 0 -co COMPRESS=JPEG Bilder/Warped/$warped Bilder/Warped/r_$warped
#   mv Bilder/Warped/r_$warped Bilder/Warped/$warped
# done




FILES=`ls output_qgis | grep -i .tif | cut -d . -f 1`
for input_bild in $FILES; do
  gdal_translate output_qgis/${input_bild}.tif output_qgis/${input_bild}.mbtiles -of MBTILES -a_nodata 0
done