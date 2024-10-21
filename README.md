# Baseball-Statistics-Management-Database

## Link to UML Class Diagram and ERD Crow's Foot: https://lucid.app/lucidchart/ff44d8d5-0cd3-4b7f-9c1b-8aaacbc908ea/edit?viewport_loc=-2864%2C245%2C2893%2C1565%2CHWEp-vi-RSFO&invitationId=inv_f193fd2e-3e63-4dd1-acc9-08357cce544b

## How to Run it

* Download BaseballDB Database
* Open BaseballDB.db in DB Browser
* Load SQL code into DB Browser and execute

## Queries

* **Query 1**: Finds the top 5 single season batting averages among players in the database, and outputs their information, their batting average, and the year.
	* Run **Top5AvgQuery.sql**
* **Query 2:**: Finds the names and player ids of every player that is on the Red Sox or Royals, is under the age of 25, and is a pitcher or has a season with a batting average over .300.
	* Run **AgeAndPitcherAndAvgQuery.sql**
* **Query 3:**: Groups all position players in the database by position and outputs the average batting average for each position.
	* Run **PoaitionAvgsGroups.sql**
* **Query 4:**: Finds all "Cy Young Winner" pitchers, which in this case means all pitchers with seasons with ERAs under 1.00.
	* Run **PitcherERASubquery.sql**
* **Query 5:**: Finds all players in the database with a season with a batting average above .400.
	* Run **Join3BattingAvgQuery.sql**