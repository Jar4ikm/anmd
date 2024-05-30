https://moodle.edu.ee/mod/quiz/review.php?attempt=5776288&cmid=852619
-- ???????? ??????? KyberSport
CREATE TABLE KyberSport(
KyberSportID int Primary key identity(1,1),
KyberRyhmNimi varchar(50),
osalejateArv int
);
-- ???????? ??????? Mang
CREATE TABLE Mang(
MangID int Primary key identity(1,1),
MangNimi varchar(50)
);
-- ???????? ?????????? ?????
ALTER TABLE KyberSport ADD MangID int;
ALTER TABLE KyberSport ADD FOREIGN KEY (MangID) REFERENCES Mang(MangID);

-- ????????? ???????
INSERT INTO Mang(MangNimi) VALUES ('Dota2');
INSERT INTO Mang(MangNimi) VALUES ('CS2');
INSERT INTO Mang(MangNimi) VALUES ('Valorant');
INSERT INTO Mang(MangNimi) VALUES ('Farming Simulator 2022');
INSERT INTO Mang(MangNimi) VALUES ('Tetris');
INSERT INTO Mang(MangNimi) VALUES ('Minecraft');

INSERT INTO KyberSport(KyberRyhmNimi, osalejateArv, MangID) VALUES ('Team Spirit', 5, 2);
INSERT INTO KyberSport(KyberRyhmNimi, osalejateArv, MangID) VALUES ('Navi', 5, 1);
INSERT INTO KyberSport(KyberRyhmNimi, osalejateArv, MangID) VALUES ('Fnatic', 5, 3);
INSERT INTO KyberSport(KyberRyhmNimi, osalejateArv, MangID) VALUES ('Vladsquad', 3, 4);
INSERT INTO KyberSport(KyberRyhmNimi, osalejateArv, MangID) VALUES ('Joseph Saelee', 1, 5);
INSERT INTO KyberSport(KyberRyhmNimi, osalejateArv, MangID) VALUES ('SomeName', 4, 6);

select * from KyberSport
select * from Mang

-- ?????? ???? ???????????? opilane
GRANT INSERT,SELECT ON Mang TO opilane;
GRANT INSERT,SELECT ON KyberSport TO opilane;

-- ???????? ??????? ?????
CREATE TABLE logi(
id int Primary key identity(1,1),
kasutaja varchar(50),
kuupaev varchar(50),
sisestatudAndmed text);

-- ???????? ????????
CREATE TRIGGER KyberKutsutamine ON KyberSport
FOR DELETE
AS BEGIN
Insert into logi(kasutaja,kuupaev, sisestatudAndmed) SELECT USER, GETDATE(), CONCAT('DELETED ryhm nimi: ',deleted.KyberRyhmNimi,' | MangID: ',deleted.MangID) FROM deleted INNER JOIN Mang ON deleted.MangID = Mang.MangID;
END
CREATE TRIGGER KyberLisamine ON KyberSport
FOR INSERT
AS BEGIN

Insert into logi(kasutaja,kuupaev, sisestatudAndmed) SELECT USER, GETDATE(), CONCAT('ADDED ryhm nimi: ',inserted.KyberRyhmNimi,' | Mang nimi: ',Mang.MangNimi ) FROM inserted
INNER JOIN Mang ON inserted.MangID = Mang.MangID;

END
-- ????????
INSERT INTO KyberSport(KyberRyhmNimi, osalejateArv, MangID) VALUES ('VirtusPro', 5, 2);
select * from logi





-- ???????? ?????????
Create Procedure Find
@inputnimi varchar(50)

as
BEGIN
	SELECT KyberSport.KyberRyhmNimi, Mang.MangNimi
FROM KyberSport
INNER JOIN Mang
ON KyberSport.MangID = Mang.MangID where Mang.MangNimi=@inputnimi;
END;
EXEC Find 'Minecraft';

select * from KyberSport
BEGIN TRANSACTION;
DELETE FROM KyberSport WHERE KyberSportID = 10;
select * from KyberSport
SAVE TRANSACTION ProcedureSave;
DELETE FROM KyberSport WHERE KyberSportID = 9;
select * from KyberSport
ROLLBACK TRANSACTION ProcedureSave; 
select * from KyberSport

COMMIT TRANSACTION;
ROLLBACK;
select * from KyberSport
