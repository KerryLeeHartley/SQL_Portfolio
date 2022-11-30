/* Create table about the people and what they do here */

/**In this project, you’re going to make your own table with some small 
set of “famous people”, then make more tables about things they do and join 
those to create nice human readable lists. Contains at least two tables with at 
least 15 rows total. One of the tables contains a column that relates to the primary key of another table.
Has at least one query that does a JOIN.*/

CREATE TABLE influencers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    fullname TEXT,
    age INTEGER,
    nationality TEXT);
    
INSERT INTO influencers (fullname, age, nationality) VALUES ("LeBron James", 37, "US");
INSERT INTO influencers (fullname, age, nationality) VALUES ("Oprah Winfrey", 68, "US");
INSERT INTO influencers (fullname, age, nationality) VALUES ("Marques Brownlee", 28, "US");
INSERT INTO influencers (fullname, age, nationality) VALUES (" Serena Williams", 41, "US");
INSERT INTO influencers (fullname, age, nationality) VALUES ("Issa Rae", 37, "US");

INSERT INTO influencers (fullname, age, nationality) VALUES ("Kevin Hart", 43, "US");
INSERT INTO influencers (fullname, age, nationality) VALUES ("Dwayne Johnson", 50, "US");
INSERT INTO influencers (fullname, age, nationality) VALUES ("Cristiano Ronaldo", 37, "US");
INSERT INTO influencers (fullname, age, nationality) VALUES (" Leo Messi", 35, "US");
INSERT INTO influencers (fullname, age, nationality) VALUES ("Kerry Lee Hartley", 26, "US");

INSERT INTO influencers (fullname, age, nationality) VALUES ("Odell Beckham Jr", 30, "US");
INSERT INTO influencers (fullname, age, nationality) VALUES ("Tiger Woods", 46, "US");
INSERT INTO influencers (fullname, age, nationality) VALUES ("Lamar Jackson", 25, "US");
INSERT INTO influencers (fullname, age, nationality) VALUES ("Justin Fields", 23, "US");
INSERT INTO influencers (fullname, age, nationality) VALUES ("Aaron Donald ", 31, "US");

CREATE table wealth (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    influencers_id INTEGER,
    ig_followers TEXT,
    source_wealth TEXT);
    
INSERT INTO wealth (influencers_id, ig_followers, source_wealth) VALUES (1, "137 million", "NBA");
INSERT INTO wealth (influencers_id, ig_followers, source_wealth) VALUES (2, "21 million", "TV Network");
INSERT INTO wealth (influencers_id, ig_followers, source_wealth) VALUES (3, "4 million", "YouTube");
INSERT INTO wealth (influencers_id, ig_followers, source_wealth) VALUES (4, "15 million", "Tennis");
INSERT INTO wealth (influencers_id, ig_followers, source_wealth) VALUES (5, "3.8 milIion", "TV Producer");

INSERT INTO wealth (influencers_id, ig_followers, source_wealth) VALUES (6, "158 million", "Comedian");
INSERT INTO wealth (influencers_id, ig_followers, source_wealth) VALUES (7, "350 million", "Actor");
INSERT INTO wealth (influencers_id, ig_followers, source_wealth) VALUES (8, "381 million", "Soccer");
INSERT INTO wealth (influencers_id, ig_followers, source_wealth) VALUES (9, "506 million", "Soccer");
INSERT INTO wealth (influencers_id, ig_followers, source_wealth) VALUES (10, "100 milIion", "Investing");

INSERT INTO wealth (influencers_id, ig_followers, source_wealth) VALUES (11, "16.7 million", "NFL");
INSERT INTO wealth (influencers_id, ig_followers, source_wealth) VALUES (12, "3 million", "Golf");
INSERT INTO wealth (influencers_id, ig_followers, source_wealth) VALUES (13, "3.1 million", "NFL");
INSERT INTO wealth (influencers_id, ig_followers, source_wealth) VALUES (14, "1 million", "NFL");
INSERT INTO wealth (influencers_id, ig_followers, source_wealth) VALUES (15, "1.2 milIion", "NFL");

/*Return total net worth for each billionare*/
SELECT influencers.fullname, wealth.ig_followers
FROM influencers
JOIN wealth
ON influencers.id = wealth.influencers_id;
