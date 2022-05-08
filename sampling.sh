#!/usr/bin/bash

rm data/*

#download data
wget -P ./data https://github.com/labusiam/dataset/raw/main/weather_data.xlsx

#convert setiap sheet

FILE=/home/azamaufar/latihan_shell/bikin_bash_script/data/weather_data.xlsx
if [[ -f "$FILE" ]]; then
	echo "file exist"
	in2csv data/weather_data.xlsx --sheet "weather_2014" > data/weather_2014.csv
	in2csv data/weather_data.xlsx --sheet "weather_2015" > data/weather_2015.csv
else
	echo "Data belum terdownload"
fi

#Gabungkan data weather 2015 dan 2014 menjadi 1 csv 
csvstack data/weather_2014.csv data/weather_2015.csv | csvlook > data/weather.csv
rm data/weather_data.xlsx

#sampling pada weather.csv dengan rate 0.3
head data/weather.csv | sample -r 0.3 | csvlook > data/sample_weather.csv

