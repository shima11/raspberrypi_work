#!/bin/bash
case $1 in
    "1")
        feed="topfreeapplications";;
    "2")
        feed="toppaidapplications";;
    "3")
        feed="topgrossingapplications";;
    "4")
        feed="topfreeipadapplications";;
    "5")
        feed="toppaidipadapplications";;
    "6")
        feed="topgrossingipadapplications";;
    "7")
        feed="newapplications";;
    "8")
        feed="newipadapplications";;
esac

countries=( "gb" "us" "kr" "cn" "tw" "jp" "de" "in" "br" "ru" "ca" "es" "fr" "za" "it" "au" "vn" "id" "sg" "ph" "my" "tw" "hk" )
dir="/mnt/hdd1"
for country in "${countries[@]}" ;do
for genreid in {6000..6024} ;do
  date=`date +%Y-%m-%d`;
  wget -q -O $dir/output2/$feed/$country/$genreid/$date.txt -c https://itunes.apple.com/$country/rss/$feed/limit=200/genre=$genreid/json ;
  sleep 4s;
done;
done;
