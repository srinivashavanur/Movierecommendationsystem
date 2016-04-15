Requirement: 
The requirement is to design a prototype that will take a misspelled movie name as an input and the system will respond with the most likely correct entries (say three of them). The user chooses one of them (say the second one). This selection will be used to identify the applicable genres. Using a couple of the actors from the selected movie, and the selected movie's genre, the system will return with a list of recommended movies (say a maximum of 10), sorted so that the one most like the original movie is first.

Here levenshtein's distance method is used to identify the spell check of the movie to know the actual movie name to give away the list of recommended movies based on the genres and the actors of the given movie name.

Following are the directions to create, populate, query, delete the database.

1. Download all the attachments and copy those files in same directory.

2. Run createDOTsh.sh file to create database and database tables. User has to provide database name as an input.

3. Run FilterScript.sh file to filter the TV shows and Video games from movies.csv and genres.csv. This script generates new filtered csv files like moviesfiltered.csv, moviescharacters.csv.
Note: Skip this step as these files are already attached.

4. Run populateDOTsh.sh file to populate the database tables from the csv files. This script takes database name as a user input.

5. Run queryDOTsh.sh file to query the database to get the list of recommended movies based on genres and actors for the user who wants to give 'Escape Plan' as an movie input but end up with misspelled input as 'Escpe Pln'. The output details are mentioned in the results.txt file.

6. Run deleteDOTsh.sh to delete the database once if it is no longer use to utilize the disk space and increase the performance.
