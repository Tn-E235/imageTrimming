#/bin/bash

width=$1
height=$2
x=$3
y=$4
# rm ./out/*
cnt=0
for i in $(ls ./images/)
do
    echo "./images/"${i} "-crop" ${width}x${height}+${x}+${y} ."/out/"${cnt}".png"
    convert "./images/"${i} "-crop" ${width}x${height}+${x}+${y} "./out/"${cnt}".png"
    cnt=$(expr $cnt + 1)
done
