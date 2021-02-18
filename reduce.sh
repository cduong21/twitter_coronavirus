#!/bin/bash

mkdir -p viz
cd viz
mkdir -p country lang
cd ..

#create an array
arr=("#코로나바이러스"
		"#コロナウイルス"
		"#冠状病毒"
		"#covid2019"
		"#covid-2019"
		"#covid19"
		"#covid-19"
		"#coronavirus"
		"#corona"
		"#virus"
		"#flu"
		"#sick"
		"#cough"
		"#sneeze"
		"#hospital"
		"#nurse"
		"#doctor")

for i in "${arr[@]}"
do
	./src/visualize.py --input_path=reduced.country --key=$i | head> viz/country/$i
	./src/visualize.py --input_path=reduced.lang --key=$i | head > viz/lang/$i
done


