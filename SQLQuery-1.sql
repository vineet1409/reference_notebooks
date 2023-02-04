-- CREATE DATABASE covid19;

CREATE TABLE covidstats
(covidID INT IDENTITY(1,3),
date datetime,
dailyconfimedcases INT,
dailyDeaths smallint,
country varchar(25),
covidFlag bit,
totalLoss Money
);

CREATE TABLE covidstats_new
(covidID INT PRIMARY KEY,
date datetime NOT NULL,
dailyconfimedcases INT,
dailyDeaths smallint,
country varchar(25) UNIQUE,
covidFlag bit NOT NULL,
totalLoss Money UNIQUE
);


CREATE TABLE covidstats_1
(covidID INT,
date_1 datetime,
dailyconfimedcases_1 INT,
dailyDeaths_1 smallint,
country_1 varchar(25),
covidFlag_1 bit,
totalLoss_1 Money,
CONSTRAINT covidstats_1FK FOREIGN KEY(covidID) REFERENCES covidstats_new(covidID)
);


-- INSERT INTO TABLE_NAME values (list of values)