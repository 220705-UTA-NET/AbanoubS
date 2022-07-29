CREATE SCHEMA Project1;
GO


CREATE TABLE Season21_22
(
    Position INT PRIMARY KEY NOT NULL,
    Club NVARCHAR (60) NOT NULL,
    Points INT NOT NULL
);

CREATE TABLE Season20_21
(
    Position INT PRIMARY KEY NOT NULL,
    Club NVARCHAR (60) NOT NULL,
    Points INT NOT NULL
);
CREATE TABLE Season19_20
(
    Position INT PRIMARY KEY NOT NULL,
    Club NVARCHAR (60) NOT NULL,
    Points INT NOT NULL
);
CREATE TABLE Season18_19
(
    Position INT PRIMARY KEY NOT NULL,
    Club NVARCHAR (60) NOT NULL,
    Points INT NOT NULL
);
CREATE TABLE Season17_18
(
    Position INT PRIMARY KEY NOT NULL,
    Club NVARCHAR (60) NOT NULL,
    Points INT NOT NULL
);
CREATE TABLE Season16_17
(
    Position INT PRIMARY KEY NOT NULL,
    Club NVARCHAR (60) NOT NULL,
    Points INT NOT NULL
);
CREATE TABLE Season15_16
(
    Position INT PRIMARY KEY NOT NULL,
    Club NVARCHAR (60) NOT NULL,
    Points INT NOT NULL
);
CREATE TABLE Season14_15
(
    Position INT PRIMARY KEY NOT NULL,
    Club NVARCHAR (60) NOT NULL,
    Points INT NOT NULL
);
CREATE TABLE Season13_14
(
    Position INT PRIMARY KEY NOT NULL,
    Club NVARCHAR (60) NOT NULL,
    Points INT NOT NULL
);
CREATE TABLE Season12_13
(
    Position INT PRIMARY KEY NOT NULL,
    Club NVARCHAR (60) NOT NULL,
    Points INT NOT NULL
);
CREATE TABLE Season11_12
(
    Position INT PRIMARY KEY NOT NULL,
    Club NVARCHAR (60) NOT NULL,
    Points INT NOT NULL
);

SELECT * FROM Project1.Atm;

-- DROP TABLE Season21_22;
-- DROP TABLE Season20_21;
-- DROP TABLE Season19_20;
-- DROP TABLE Season18_19;
-- DROP TABLE Season17_18;
-- DROP TABLE Season16_17;
-- DROP TABLE Season15_16;
-- DROP TABLE Season14_15;
-- DROP TABLE Season13_14;
-- DROP TABLE Season12_13;
-- DROP TABLE Season11_12;


INSERT INTO Season21_22 (Position, Club, Points)
VALUES
(1, 'Manchester City', 93),
(2, 'Liverpool',92),
(3 , 'Chelsea', 74),
(4,'Tottenham Hotspur',71);

INSERT INTO Season20_21 (Position, Club, Points)
VALUES
(1, 'Manchester City', 86),
(2, 'Manchester United',74),
(3 , 'Chelsea', 69),
(4,'Liverpool',67);

INSERT INTO Season19_20 (Position, Club, Points)
VALUES
(1, 'Liverpool', 99),
(2, 'Manchester City',81),
(3 , 'Manchester United', 66),
(4,'Chelsea',66);

INSERT INTO Season18_19 (Position, Club, Points)
VALUES
(1, 'Manchester City', 98),
(2, 'Liverpool',97),
(3 , 'Chelsea', 72),
(4,'Tottenham Hotspur',71);

INSERT INTO Season17_18 (Position, Club, Points)
VALUES
(1, 'Manchester City', 100),
(2, 'Manchester United',81),
(3 , 'Tottenham Hotspur', 77),
(4,'Liverpool',75);

INSERT INTO Season16_17 (Position, Club, Points)
VALUES
(1, 'Chelsea', 93),
(2, 'Tottenham Hotspur',86),
(3 , 'Manchester City', 78),
(4,'Liverpool',76);

INSERT INTO Season15_16 (Position, Club, Points)
VALUES
(1, 'Leicester City', 81),
(2, 'Arsenal',71),
(3 , 'Tottenham Hotspur', 70),
(4,'Manchester City',66);

INSERT INTO Season14_15 (Position, Club, Points)
VALUES
(1, 'Chelsea', 87),
(2, 'Manchester City',79),
(3 , 'Arsenal', 75),
(4,'Manchester United',70);

INSERT INTO Season13_14 (Position, Club, Points)
VALUES
(1, 'Manchester City', 86),
(2, 'Liverpool',84),
(3 , 'Chelsea', 82),
(4,'Arsenal',79);

INSERT INTO Season12_13 (Position, Club, Points)
VALUES
(1, 'Manchester United', 89),
(2, 'Manchester City',78),
(3 , 'Chelsea', 75),
(4,'Arsenal',73);

INSERT INTO Season11_12 (Position, Club, Points)
VALUES
(1, 'Manchester City', 89),
(2, 'Manchester United',89),
(3 , 'Arsenal', 74),
(4,'Tottenham Hotspur',71);

SELECT Position, Club, Points FROM Season21_22;
SELECT Position, Club, Points FROM Season20_21;
SELECT Position, Club, Points FROM Season19_20;
SELECT Position, Club, Points FROM Season18_19;
SELECT Position, Club, Points FROM Season17_18;
SELECT Position, Club, Points FROM Season16_17;
SELECT Position, Club, Points FROM Season15_16;
SELECT Position, Club, Points FROM Season14_15;
SELECT Position, Club, Points FROM Season13_14;
SELECT Position, Club, Points FROM Season12_13;
SELECT Position, Club, Points FROM Season11_12;

SELECT Position, Club, Points FROM Season21_22; SELECT Position, Club, Points FROM Season20_21; SELECT Position, Club, Points FROM Season19_20; SELECT Position, Club, Points FROM Season18_19; SELECT Position, Club, Points FROM Season17_18; SELECT Position, Club, Points FROM Season16_17; SELECT Position, Club, Points FROM Season15_16; SELECT Position, Club, Points FROM Season14_15; SELECT Position, Club, Points FROM Season13_14; SELECT Position, Club, Points FROM Season12_13; SELECT Position, Club, Points FROM Season11_12;


SELECT Position, Club, Points FROM Season11_12, Season12_13, Season13_14, Season14_15, Season15_16, Season16_17, Season17_18, Season18_19, Season19_20, Season20_21, Season21_22 ;
