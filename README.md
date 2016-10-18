# FSND-Tournament
## Project for Udacity Fullstack NanoDegree for Intro to Relational Databases

### tournament.sql
This is a database schema to store players and matches for a swiss-pairing style tournament. There are two tables in the database: a table containing the players and a table containing the matches between players

### tournament.py
This is a python file with functions that query the database in order to run a swiss-pairing style tournament. 

### tournament_test.py
This is another python file with the test cases for tournament.py

## Running the code

In order to run the code, you must have the latest Vagrant build as detailed in the [Udacity project notes] (https://docs.google.com/document/d/16IgOm4XprTaKxAa8w02y028oBECOoB1EI1ReddADEeY/pub?embedded=true). The notes contain detailed instructions of how to set up the project, what follows is a summary of those instructions. 

1. Fork the [Fullstack Nanodegree Repository] (https://github.com/udacity/fullstack-nanodegree-vm), clone it to your local machine and run the Vagrant VM. 
2. Use the command `vagrant up` to start the VM followed by `vagrant ssh` to log in. 
3. Once there, type `psql` to start the command line interface followed by `\i tournament.sql` to connect to the database. 
4. To test the database, run `tournament_test.py` 

