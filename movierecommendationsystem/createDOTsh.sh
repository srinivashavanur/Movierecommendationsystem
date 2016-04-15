#!/bin/bash


clear
echo "#####################################################################################################################"
echo "                                                                                                                     "
echo "                                               Assignment 1: NoSql Databases                                         "
echo "                                                   Dr Chuck Cartledge                                                "
echo "                                                                                                                     "
echo "                                                  TASK: CREATE DATABASE                                              "
echo "#####################################################################################################################"


echo "Enter the Database name to create"
read Databasename


psql << START 
CREATE DATABASE $Databasename;
\c $Databasename;
create table genres(movieid int NOT NULL,genre varchar(50) NOT NULL);
create table actors(actorid int NOT NULL, name  varchar(250) NOT NULL, sex char(1));
create table moviecharacters(movieid int NOT NULL, actorid int NOT NULL);
create table movies(movieid int NOT NULL , title text, year varchar(100));
START

