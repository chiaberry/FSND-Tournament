-- Table definitions for the tournament project.
--


CREATE DATABASE tournament;

\c tournament;

CREATE TABLE players (playerID serial primary key, name text);
CREATE TABLE matches (matchID serial primary key, 
					  player int references players(playerID), 
					  opponent int references players(playerID), 
					  points int);

CREATE VIEW standings AS
select players.playerid as ID, 
players.name as Name, 
count(nullif(points,0)) as Wins,
coalesce(count(matches.player), 0) as Record
from players 
left join matches on players.playerid=matches.player 
group by players.playerid
ORDER BY Wins DESC;
