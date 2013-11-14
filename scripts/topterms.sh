#!/bin/bash

# Print out a list of the top 50 most common terms

file="../dataset/keyword_stats_20120302_0100784.csv"
keywords=`cut -f 1 -d , $file`
terms=""
for term in $keywords; do
	echo $terms | grep -q $term > /dev/null
	if [ $? != 0 ]; then
		count=`grep -wc $term $file` 
		terms="$terms\n$count $term"
	fi
done
echo -e $terms | sort -nr | head -n 50
