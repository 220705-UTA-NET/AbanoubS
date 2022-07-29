-- double hyphen denotes a comment 

/* provides multe 
line comment */

/* 
DD: - Data definition Lanhuage 
manipulate the state/structure (the tables) of our database

Create 
Alter
Drop

DML - Data Manipulation Language
manupulate the Data of our database

Insert
Update
Truncate
Delete


DCL - Data Control Language
administrating who can access or manipulate the database 

Grant/Revoke User
Grant/Revoke Login


DQL - Data Query Language
the commands we use to phrase, filter, and structure a query

Select 
Wher 
From
If
Joins 

*/
-- Create table Name
-- (
--      column description
-- )
-- Verb Noun

--DROP TABLE POKEMON; 
-- DROP TABLE TYPE; 


CREATE TABLE Pokemon
(
--  column-name variable-type modifiers
    Id INT PRIMARY KEY IDENTITY, -- not null and unique , identity == index
    Name NVARCHAR(64) NOT NULL UNIQUE,
    Height INT NOT NULL,
    Weight INT NOT NULL
);

CREATE TABLE Type
(
    Id INT PRIMARY KEY IDENTITY,
    Name NVARCHAR(64) NOT NULL UNIQUE
);

/* MULTIPLICITY - The relationships between the entries in a database/tables

1-to-1 - for each entry in table A, there is one entry related to it in table B
1-to-many - for each entry in table A, there is/are many related entries in table B
many-to-many - for many entries in table A, there are many related entries in table B
*/

-- create a linking table between Pokemon and Type

CREATE TABLE PokemonType
(
    Id INT NOT NULL PRIMARY KEY IDENTITY,
    PokemonId INT NOT NULL FOREIGN KEY REFERENCES Pokemon (Id)
        ON DELETE CASCADE,
    TypeId INT NOT NULL FOREIGN KEY REFERENCES Type (Id)
        ON DELETE CASCADE
);

--CASCADE triggers the specified column to also delete/update when the FK entry is affected 

-- Insert data into the tables 

INSERT INTO Pokemon (Name, Height, Weight)VALUES 
('Charizard', 67, 215),
('Midkip', 24, 45);

INSERT INTO Type (Name) VALUES
('Fire'),
('Water'),
('Dragon'),
('Grass');

INSERT INTO PokemonType(PokemonId, TypeId) VALUES
(1,1),
(1,3),
(2,2);


-- Retrive data from the tables 
SELECT Name FROM Type;
SELECT * FROM Type;

SELECT * FROM Pokemon;
SELECT Height FROM Pokemon;
SELECT Name, Height FROM Pokemon; 
-- Use the Where keyword to add a filter to your query 
SELECT Name FROM Pokemon WHERE (Height > 50);
SELECT Name FROM Pokemon WHERE Name LIKE '%mi%';

SELECT * FROM PokemonType;

-- join two tables along a common column (key pair) so that we can retrieve data from both tables at the same time
-- use the AS keyword to create an alise that can shorten the names of the tables you are using 
SELECT P.Name, T.Name
FROM Pokemon AS P
JOIN PokemonType AS PT ON P.Id = PT.PokemonId
JOIN Type AS T ON T.Id = PT.TypeId;

/* Joins

Table a              Table b
1                    null
2                    b
null                 null
null                 e

full - return all matched records, ignoring null (left, right and center of the vadiagram)
inner - return matched records, removing all null entries (the center only) 
outer - returns matched records, keeping only the entries will a null (left and right, no center)
left - return the entire "left" table, as well as matching non-nul entries from the "right" (left and center)
right - return the entire "right" table, as well as matching non-null entries from the "left" (center and rught)
cross returns any and all combination of entries possible between the two tables (all options)