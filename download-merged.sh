#!/usr/bin/bash

#download data

wget https://archive.ics.uci.edu/ml/machine-learning-databases/00481/EMG_data_for_gestures-master.zip

#unzip to folders

unzip EMG_data_for_gestures-master.zip

#merge all txt files within folders to 1 single file

cat EMG_data_for_gestures-master/*/* > merged.txt


