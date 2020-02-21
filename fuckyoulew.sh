#!/bin/sh

i=0

files=(*.jpg *png)

for f in "${files[@]}"; do
    i=$(( i + 1 ))
    currentIndex=$i
    pageIndex=$(($currentIndex / 50))
    echo "<a href=$f><img src=$f></img></a><br>" >> $pageIndex.html

done
