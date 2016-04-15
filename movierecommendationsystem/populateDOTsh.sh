#!/bin/bash


clear
echo "#####################################################################################################################"
echo "                                                                                                                     "
echo "                                               Assignment 1: NoSql Databases                                         "
echo "                                                   Dr Chuck Cartledge                                                "
echo "                                                                                                                     "
echo "                                                  TASK: POPULATE DATABASE                                            "
echo "#####################################################################################################################"


echo "Enter the Database name to populate data"
read Databasename


psql << START 
\c $Databasename;
set client_encoding to 'iso-8859-1';
copy genres(movieid,genre) FROM '/home/shavanur/nosql/Assignment1/genres.csv' DELIMITER '|' CSV;

copy actors(actorid,name,sex) FROM '/home/shavanur/nosql/Assignment1/actors.csv' DELIMITER '|' CSV;

copy moviecharacters(movieid,actorid) FROM '/home/shavanur/nosql/Assignment1/moviescharacters.csv' DELIMITER '|' CSV;

copy movies(movieid, title, year) FROM '/home/shavanur/nosql/Assignment1/moviesfiltered.csv' DELIMITER '|' CSV;
START

