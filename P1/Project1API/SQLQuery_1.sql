CREATE SCHEMA Project1;
GO


CREATE TABLE All_Seasons
(
    ID INT PRIMARY KEY IDENTITY,
    Position INT NOT NULL,
    Club NVARCHAR (60) NOT NULL,
    Points INT NOT NULL,
    Season_End INT NOT NULL
);

-- DROP TABLE All_Seasons;

SELECT DISTINCT Season_End FROM All_Seasons

SELECT * FROM All_Seasons;

SELECT Position, Club, Points FROM All_Seasons WHERE Season_End =2022;

INSERT INTO All_Seasons (Position, Club, Points, Season_End)
VALUES
(1, 'Manchester City', 93, 2022),
(2, 'Liverpool',92, 2022),
(3 , 'Chelsea', 74, 2022),
(4,'Tottenham Hotspur',71, 2022);

INSERT INTO All_Seasons (Position, Club, Points, Season_End)
VALUES
(1, 'Manchester City', 86, 2021),
(2, 'Manchester United',74, 2021),
(3 , 'Chelsea', 69, 2021),
(4,'Liverpool',67, 2021);

INSERT INTO All_Seasons (Position, Club, Points, Season_End)
VALUES
(1, 'Liverpool', 99, 2020),
(2, 'Manchester City',81, 2020),
(3 , 'Manchester United', 66, 2020),
(4,'Chelsea',66, 2020);

INSERT INTO All_Seasons (Position, Club, Points, Season_End)
VALUES
(1, 'Manchester City', 98, 2019),
(2, 'Liverpool',97, 2019),
(3 , 'Chelsea', 72, 2019),
(4,'Tottenham Hotspur',71, 2019);

INSERT INTO All_Seasons (Position, Club, Points, Season_End)
VALUES
(1, 'Manchester City', 100, 2018),
(2, 'Manchester United',81, 2018),
(3 , 'Tottenham Hotspur', 77, 2018),
(4,'Liverpool',75, 2018);

INSERT INTO All_Seasons (Position, Club, Points, Season_End)
VALUES
(1, 'Chelsea', 93, 2017),
(2, 'Tottenham Hotspur',86, 2017),
(3 , 'Manchester City', 78, 2017),
(4,'Liverpool',76, 2017);

INSERT INTO All_Seasons (Position, Club, Points, Season_End)
VALUES
(1, 'Leicester City', 81, 2016),
(2, 'Arsenal',71, 2016),
(3 , 'Tottenham Hotspur', 70, 2016),
(4,'Manchester City',66, 2016);

INSERT INTO All_Seasons (Position, Club, Points, Season_End)
VALUES
(1, 'Chelsea', 87, 2015),
(2, 'Manchester City',79, 2015),
(3 , 'Arsenal', 75, 2015),
(4,'Manchester United',70, 2015);

INSERT INTO All_Seasons (Position, Club, Points, Season_End)
VALUES
(1, 'Manchester City', 86, 2014),
(2, 'Liverpool',84, 2014),
(3 , 'Chelsea', 82, 2014),
(4,'Arsenal',79, 2014);

INSERT INTO All_Seasons (Position, Club, Points, Season_End)
VALUES
(1, 'Manchester United', 89, 2013),
(2, 'Manchester City',78, 2013),
(3 , 'Chelsea', 75, 2013),
(4,'Arsenal',73, 2013);

INSERT INTO All_Seasons (Position, Club, Points, Season_End)
VALUES
(1, 'Manchester City', 89, 2012),
(2, 'Manchester United',89, 2012),
(3 , 'Arsenal', 74, 2012),
(4,'Tottenham Hotspur',71, 2012);

INSERT INTO All_Seasons (Position, Club, Points, Season_End)
VALUES
(1, 'Manchester United', 80, 2011),
(2, 'Chelsea',71, 2011),
(3 , 'Manchester City', 71, 2011),
(4,'Arsenal',68, 2011);

INSERT INTO All_Seasons (Position, Club, Points, Season_End)
VALUES
(1, 'Chelsea', 86, 2010),
(2, 'Manchester United',85, 2010),
(3 , 'Arsenal', 75, 2010),
(4,'Tottenham Hotspur',70, 2010);

INSERT INTO All_Seasons (Position, Club, Points, Season_End)
VALUES
(1, 'Manchester United', 90, 2009),
(2, 'Liverpool',86, 2009),
(3 , 'Chelsea', 83, 2009),
(4,'Arsenal',72, 2009);

INSERT INTO All_Seasons (Position, Club, Points, Season_End)
VALUES
(1, 'Manchester United', 87, 2008),
(2, 'Chelsea',85, 2008),
(3 , 'Arsenal', 83, 2008),
(4,'Liverpool',76, 2008);

INSERT INTO All_Seasons (Position, Club, Points, Season_End)
VALUES
(1, 'Manchester United', 89, 2007),
(2, 'Chelsea',83, 2007),
(3 , 'Liverpool', 68, 2007),
(4,'Arsenal',68, 2007);

INSERT INTO All_Seasons (Position, Club, Points, Season_End)
VALUES
(1, 'Chelsea', 91, 2006),
(2, 'Manchester United',83, 2006),
(3 , 'Liverpool', 82, 2006),
(4,'Arsenal',67, 2006);

INSERT INTO All_Seasons (Position, Club, Points, Season_End)
VALUES
(1, 'Chelsea', 95, 2005),
(2, 'Arsenal',83, 2005),
(3 , 'Manchester United', 77, 2005),
(4,'Everton',61, 2005);

INSERT INTO All_Seasons (Position, Club, Points, Season_End)
VALUES
(1, 'Arsenal', 90, 2004),
(2, 'Chelsea',79, 2004),
(3 , 'Manchester United', 75, 2004),
(4,'Liverpool',60, 2004);

INSERT INTO All_Seasons (Position, Club, Points, Season_End)
VALUES
(1, 'Manchester United', 83, 2003),
(2, 'Arsenal',78, 2003),
(3 , 'Newcastle United', 69, 2003),
(4,'Chelsea',67, 2003);

INSERT INTO All_Seasons (Position, Club, Points, Season_End)
VALUES
(1, 'Arsenal', 87, 2002),
(2, 'Liverpool',80, 2002),
(3 , 'Manchester United', 77, 2002),
(4,'Newcastle United',71, 2002);

INSERT INTO All_Seasons (Position, Club, Points, Season_End)
VALUES
(1, 'Manchester United', 80, 2001),
(2, 'Arsenal', 70, 2001),
(3 , 'Liverpool', 69, 2001),
(4,'Leeds United',68, 2001);

INSERT INTO All_Seasons (Position, Club, Points, Season_End)
VALUES
(1, 'Manchester United', 91, 2000),
(2, 'Arsenal',73, 2000),
(3 , 'Leeds United', 69, 2000),
(4,'Liverpool',67, 2000);

SELECT * FROM All_Seasons;


-- SELECT Position, Club, Points FROM Season21_22;
-- SELECT Position, Club, Points FROM Season20_21;
-- SELECT Position, Club, Points FROM Season19_20;
-- SELECT Position, Club, Points FROM Season18_19;
-- SELECT Position, Club, Points FROM Season17_18;
-- SELECT Position, Club, Points FROM Season16_17;
-- SELECT Position, Club, Points FROM Season15_16;
-- SELECT Position, Club, Points FROM Season14_15;
-- SELECT Position, Club, Points FROM Season13_14;
-- SELECT Position, Club, Points FROM Season12_13;
-- SELECT Position, Club, Points FROM Season11_12;

-- SELECT Position, Club, Points FROM Season21_22; SELECT Position, Club, Points FROM Season20_21; SELECT Position, Club, Points FROM Season19_20; SELECT Position, Club, Points FROM Season18_19; SELECT Position, Club, Points FROM Season17_18; SELECT Position, Club, Points FROM Season16_17; SELECT Position, Club, Points FROM Season15_16; SELECT Position, Club, Points FROM Season14_15; SELECT Position, Club, Points FROM Season13_14; SELECT Position, Club, Points FROM Season12_13; SELECT Position, Club, Points FROM Season11_12;


-- SELECT Position, Club, Points FROM Season11_12, Season12_13, Season13_14, Season14_15, Season15_16, Season16_17, Season17_18, Season18_19, Season19_20, Season20_21, Season21_22 ;

-- CREATE TABLE Season21_22
-- (
--     Position INT PRIMARY KEY NOT NULL,
--     Club NVARCHAR (60) NOT NULL,
--     Points INT NOT NULL
-- );

-- CREATE TABLE Season20_21
-- (
--     Position INT PRIMARY KEY NOT NULL,
--     Club NVARCHAR (60) NOT NULL,
--     Points INT NOT NULL
-- );
-- CREATE TABLE Season19_20
-- (
--     Position INT PRIMARY KEY NOT NULL,
--     Club NVARCHAR (60) NOT NULL,
--     Points INT NOT NULL
-- );
-- CREATE TABLE Season18_19
-- (
--     Position INT PRIMARY KEY NOT NULL,
--     Club NVARCHAR (60) NOT NULL,
--     Points INT NOT NULL
-- );
-- CREATE TABLE Season17_18
-- (
--     Position INT PRIMARY KEY NOT NULL,
--     Club NVARCHAR (60) NOT NULL,
--     Points INT NOT NULL
-- );
-- CREATE TABLE Season16_17
-- (
--     Position INT PRIMARY KEY NOT NULL,
--     Club NVARCHAR (60) NOT NULL,
--     Points INT NOT NULL
-- );
-- CREATE TABLE Season15_16
-- (
--     Position INT PRIMARY KEY NOT NULL,
--     Club NVARCHAR (60) NOT NULL,
--     Points INT NOT NULL
-- );
-- CREATE TABLE Season14_15
-- (
--     Position INT PRIMARY KEY NOT NULL,
--     Club NVARCHAR (60) NOT NULL,
--     Points INT NOT NULL
-- );
-- CREATE TABLE Season13_14
-- (
--     Position INT PRIMARY KEY NOT NULL,
--     Club NVARCHAR (60) NOT NULL,
--     Points INT NOT NULL
-- );
-- CREATE TABLE Season12_13
-- (
--     Position INT PRIMARY KEY NOT NULL,
--     Club NVARCHAR (60) NOT NULL,
--     Points INT NOT NULL
-- );