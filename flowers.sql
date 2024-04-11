CREATE DATABASE lilledemyyMurdvee;
use lilledemyyMurdvee;

-- table 1 tootaja
CREATE TABLE tootaja(
tootajaID int Primary key identity(1,1),
eesnimi varchar(50),
perekonnanimi varchar(50),
isikukood varchar(11),);

-- table 2 kaup
CREATE TABLE kaup(
kaupID int Primary key identity(1,1),
kaup varchar(50),
kirjeldus Text,);

-- table 3 kliendikaart
CREATE TABLE kliendikaart(
kliendikaartID int Primary key identity(1,1),
kliendikaart bit);

-- table 4 myyk
CREATE TABLE myyk(
myykID int Primary key identity(1,1),
tootajaID int,
kaupID int,
kogus int,
hind money,
kliendikaartID int);

INSERT INTO tootaja(eesnimi,perekonnanimi,isikukood) VALUES ('einar','sepessev','50223540230');
INSERT INTO kaup(kaup,kirjeldus) VALUES ('amazing product', 'monitors and etc');
INSERT INTO kliendikaart(kliendikaart) VALUES ('True');

ALTER TABLE myyk ADD FOREIGN KEY (tootajaID) REFERENCES tootaja(tootajaID);
ALTER TABLE myyk ADD FOREIGN KEY (kaupID) REFERENCES kaup(kaupID);
ALTER TABLE myyk ADD FOREIGN KEY (kliendikaartID) REFERENCES kliendikaart(kliendikaartID);

select * from tootaja;
select * from kaup;
select * from kliendikaart;
select * from myyk;

INSERT INTO myyk(tootajaID,kaupID,kogus,hind,kliendikaartID) VALUES (1,1,1,'7.4',1);



UPDATE kaup SET kaup='smth good' where kaup='amazing shop';