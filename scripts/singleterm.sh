#!/bin/bash

# Create data files containing only the entries for each term

terms="sim android lawyer insurance credit lemon ink equity hair canon"
files=`ls ../dataset`
cd ../terms
for term in $terms; do
	mkdir $term
	for file in $files; do
		grep $term "../dataset/$file" > "$term/$file";
	done
done