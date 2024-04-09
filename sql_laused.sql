MS SQL Server managment studio
Server Name: localdb/(...) & windows auth
Primary key - Делает каждый предмет уникальным
FK - Fr
CREATE DATABASE murdveetitpv22;

CREATE DATABASE murdveetitpv22;

USE murdveetitpv22;
CREATE TABLE oppeaine(
oppeaineID int Primary key identity(1,1),
nimetus varchar(50) UNIQUE,
kestvus int NOT NULL,
kirjuldus Text,
algus_kuupaev date);
--Kuva tabeli Отобрази таблицу


--delete table
--DROP table oppeaine;

--Andmete lisamine tabeli sisse
INSERT INTO oppeaine(nimetus, kestvus, kirjuldus, algus_kuupaev, opetajaID) VALUES ('Lifnux',2,'sudo rm -rf /*', '2125-12-9',555);
--Opitaja table
CREATE TABLE opetaja(
opetajaID int Primary key identity(1,1),
eesnimi varchar(50) NOT NULL,
perenimi varchar(50) NOT NULL,
sünniaeg date,
kontakt varchar(50));

INSERT INTO opetaja(eesnimi, perenimi, kontakt) VALUES ('Mikhail','Agapov','tg +7 910 4444116');

--update kirje
UPDATE opetaja SET sünniaeg='1999-2-2' where opetajaID=3;



--Tabeli muutmine veergu lisamine
-- FK -> PK
ALTER TABLE oppeaine ADD opetajaID int;

SELECT * FROM opetaja;
SELECT * FROM oppeaine;
UPDATE opetaja SET opetajaID=2 where opetajaID = 3 ;

-- FK add
ALTER TABLE oppeaine ADD FOREIGN KEY (opetajaID) REFERENCES opetaja(opetajaID);