#!/bin/bash

mkdir -p viz
cd viz
mkdir -p country lang

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

cd country
for i in "${arr[@]}"
do
	touch $i
done

cd ..
cd lang
for i in "${arr[@]}"
do
	touch $i
done

cd ..
