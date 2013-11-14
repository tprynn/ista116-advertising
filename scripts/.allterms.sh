#!/bin/bash

# Pick out all terms and place them into all
# Basically, remove all non-bundle terms

terms="sim android lawyer insurance credit lemon ink equity hair canon"
files=`ls ../dataset`
for term in $terms; do
	for file in $files; do
		grep $term "../dataset/$file" >> "../terms/all/$file";
	done
done