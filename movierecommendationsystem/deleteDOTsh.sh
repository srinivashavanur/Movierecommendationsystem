#!/bin/bash


clear
echo "#####################################################################################################################"
echo "                                                                                                                     "
echo "                                               Assignment 1: NoSql Databases                                         "
echo "                                                   Dr Chuck Cartledge                                                "
echo "                                                                                                                     "
echo "                                                  TASK: DELETE DATABASE                                              "
echo "#####################################################################################################################"


echo "Enter the Database name to create"
read Databasename


psql << START 
DROP DATABASE $Databasename;
START



