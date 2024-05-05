#!/usr/bin/env bash

mkdir -p "Worksheet5/United States"

for category in Music Entertainment Gaming Comedy
do
	awk -F, '($8 == "United States" && $5 == "'$category'")' "$1" > "Worksheet5/United States/$category.txt"
done

# Output to ws5.txt
echo "Total record counts in each file: " > ws5.txt

for category in Music Entertainment Gaming Comedy
do 
	count=$(wc -l < "Worksheet5/United States/$category.txt")
	echo "$category: $count" >> ws5.txt

done

exit 0
