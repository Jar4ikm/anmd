CREATE DATABASE lilledemyyMurdvee;
use lilledemyyMurdvee;

-- table 1 tootaja
CREATE TABLE tootaja(
tootajaID int Primary key identity(1,1),
eesnimi varchar(50),
perekonnanimi varchar(50),
isikukood varchar(11),);

-- table 2 kaup
CREATE TABLE table_name(
kaupID int Primary key identity(1,1),
kaup varchar(50),
kirjeldus Text,);

-- table 3 kliendikaart
CREATE TABLE kliendikaart(
kliendikaartID int Primary key identity(1,1),
kliendikaart varchar(50),);

-- table 4 myyk
CREATE TABLE myyk(
myykID int Primary key identity(1,1),
tootajaID int,
kaupID int,
kogus ,
hind ,
kliendikaart varchar(50));

INSERT INTO tootaja(eesnimi,perekonnanimi,isikukood) VALUES ('einar','sepessev','50223540230');
select * from tootaja;