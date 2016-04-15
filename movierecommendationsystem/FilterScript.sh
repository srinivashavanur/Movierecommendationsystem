#!/bin/bash

cat movies.csv | grep -v '"' | grep -v "(TV)" | grep -v "(VG)" | grep -v "(V)" | grep -v "{{SUSPENDED}}" | sed 's/ ([^)]*)|/|/g' >> /home/shavanur/nosql/Assignment1/moviesfiltered.csv

awk 'BEGIN{FS="|"; OFS="|"}{print $1,$2}' movies2actors.csv>> /home/shavanur/nosql/Assignment1/moviescharacters.csv
