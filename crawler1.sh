#!/bin/bash
case $1 in
    "1")
        feed="new-apps-we-love";;
    "2")
        feed="top-grossing";;
    "3")
        feed="top-paid";;
    "4")
        feed="top-free";;
esac
dir="/mnt/hdd1"
countries=( "gb" "us" "kr" "cn" "tw" "jp" "de" "in" "br" "ru" "ca" "es" "fr" "za" "it" "au" "vn" "id" "sg" "ph" "my" "tw" "hk" )

for country in "${countries[@]}" ;do
  date=`date +%Y-%m-%d`;
  wget -q -O $dir/output1/$feed/$country/$date.txt -c https://rss.itunes.apple.com/api/v1/$country/ios-apps/$feed/all/200/explicit.json ;
  sleep 4s;
done;
