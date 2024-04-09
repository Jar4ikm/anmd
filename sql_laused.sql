MS SQL Server managment studio
Server Name: localdb/(...) & windows auth
Primary key - Делает каждый предмет уникальным
CREATE DATABASE murdveetitpv22;

USE murdveetitpv22;
CREATE TABLE oppeaine(
oppeaineID int Primary key identity(1,1),
nimetus varchar(50) UNIQUE,
kestvus int NOT NULL,
kirjuldus Text,
algus_kuupaev date);
--Kuva tabeli Отобрази таблицу
SELECT * FROM oppeaine;

--Andmete lisamine tabeli sisse
INSERT INTO oppeaine(nimetus, kestvus, kirjuldus, algus_kuupaev) VALUES ('Linux',2,'sudo rm -rf /*', '2125-12-9');