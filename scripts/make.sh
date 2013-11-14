#!/bin/bash

# Generate one R file per term, and execute that file

terms="sim android lawyer insurance credit lemon ink equity hair canon"

for term in $terms; do
	./generate.sh $term
	echo "Stats for term $term:"
	R < ../stats/stats-$term.R --no-save --slave
	echo
done