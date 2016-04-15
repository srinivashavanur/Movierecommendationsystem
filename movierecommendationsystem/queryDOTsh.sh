#!/bin/bash


clear
echo "#####################################################################################################################"
echo "                                                                                                                     "
echo "                                               Assignment 1: NoSql Databases                                         "
echo "                                                   Dr Chuck Cartledge                                                "
echo "                                                                                                                     "
echo "                                                  TASK: QUERY  DATABASE                                              "
echo "#####################################################################################################################"


echo "Enter the Database name to query"
read Databasename


psql << START 
\c $Databasename;
CREATE EXTENSION fuzzystrmatch;
WITH titlename AS 
( 
         SELECT   title, 
                  movieid 
         FROM     movies 
         GROUP BY title, 
                  movieid 
         HAVING   Levenshtein(title, 'Escpe Pln')<=3 
         ORDER BY Levenshtein(title, 'Escpe Pln'), 
                  title, 
                  movieid limit 1 offset 1 ), genrename AS 
( 
                SELECT DISTINCT genre, 
                                g.movieid movieid 
                FROM            titlename t, 
                                genres g 
                WHERE           t.movieid=g.movieid ), actorname AS 
( 
                SELECT DISTINCT NAME, 
                                a.actorid actorid 
                FROM            actors a, 
                                moviecharacters mc, 
                                titlename t 
                WHERE           mc.movieid = t.movieid 
                AND             mc.actorid=a.actorid 
                ORDER BY        actorid, 
                                NAME limit 2) 
SELECT DISTINCT title, 
                year 
FROM            movies mm, 
                genrename gg, 
                actorname aa, 
                moviecharacters mc, 
                genres g 
WHERE           aa.actorid=mc.actorid 
AND             g.genre = gg.genre 
AND             g.movieid = mm.movieid 
AND             mm.movieid = mc.movieid 
GROUP BY        title, 
                year;
START
