#!/bin/bash

#Nama   : Fredik Stefan

#selama tidak ada eror pada script, program akan mengulang secara terus menerus sampai user mengehentikan paksa.
while true; do
    #menampilkan waktu pada terminal 
    #option "Ta" merupakan opsi untuk menampilkan jam,menit dan detik
    current_time=$(date +"%Ta")
    echo "Current time: $current_time"

    echo "Memory Free : "
    echo "---------------------------------------------------"
    free --mega             # berfungsi untuk menampilkan memory free dalam satuan megabyte
    sleep 5                 # memberi waktu edah selama 5 detik
    echo -e "\n"            # membuat baris kosong menggunakan string \n

    echo "Disk Free : "
    echo "---------------------------------------------------"
    df -B G                  # berfungsi untuk menampilakan  disk free dalam format giga  byte. Opsi B (Block Size) merupakan pilihan satuan yng ingin ditampilkan
    sleep 3                  # memberi waktu jedah selama 3 detik
    echo -e "\n"             # membuat baris kosong menggunakan string \n

    echo "Disk Free in Two Columns : "
    echo "---------------------------------------------------"
    df -hT | awk '$2 != "tmpfs" {print $1, $6}'     
    # befungsi untuk menampilkan disk free  
    # -  awk : befungsi untuk menfilter text dengan format tertentu  
    # - '$2 != "tmpfs" : merupakan opsi untuk menghilangkan baris yang mengandung tmpfs
    # - {print $1, $6} : merupakan opsi yang digunakan untuk menampilkan kolom 1 dan 6 saja yaitu  kolom "Filesystem" dan "use"
    sleep 1m                #memberi jedah waktu dalam 1 menit
    echo -e "\n"
    echo -e "Refresh Status \n"
done