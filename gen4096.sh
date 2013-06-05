#! /usr/bin/env bash

rm -rf 4096
mkdir 4096
ls flat/ | xargs -tI% convert -resize 4096 flat/% 4096/%
cd 4096
jpgs=`ls *jpg`
for jpg in $jpgs; do
	newjpg=`~/huilian/panotools/b64.py -r $jpg`
	mv $jpg $newjpg
done
