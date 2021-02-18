#!/bin/sh

# go through each of the zip files
for zipfile in /data-fast/twitter2020/*; do
	# run the map.py function on each of those zip files
	# & will ensure that all the processes are running in parallel
	./src/map.py --input_path=$zipfile &
done
