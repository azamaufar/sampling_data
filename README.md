# sampling_data
Ini adalah bash script yang dibuat untuk melakukan sampling pada data file excel yang telah di download pada link https://github.com/labusiam/dataset/raw/main/weather_data.xlsx

## langkah-langkah yang dilakukan
1. Mendownload sebuah file excel dari link berikut dan menyimpannya di dalam folder 
data: https://github.com/labusiam/dataset/raw/main/weather_data.xlsx
2. Lalu di dalam folder data meng-convert setiap sheet pada file weather_data.xlsx menjadi 2 file terpisah dan mengubah formatnya menjadi .csv (weather_2014.csv dan (weather_2015.csv)
3. Kemudian menggabungkan file weather_2014.csv dan weather_2015.csv menjadi 1 csv kemudian diberi nama 
weather.csv. Dan menghapus file weather_data.xlsx
4. kemudian melakukan sampling pada file weather.csv dengan rate 0.3 dan disimpan kedalam file 
sample_weather.csv
