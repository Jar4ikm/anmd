create database andmtootajamurdvee;
use andmtootajamurdvee;

CREATE TABLE tootaja(
ID int Primary key identity(1,1),
eesnimi varchar(50),
perenimi varchar(50),
isikukood varchar(50));

select * from tootaja;

-- Protseduuri loomine
Create Procedure tootajaLisamine
@inputnimi varchar(50),
@inputpere varchar(50)
as
BEGIN
	INSERT INTO tootaja(eesnimi, perenimi) VALUES (@inputnimi,@inputpere);
	select * from tootaja;
END;
EXEC tootajaLisamine 'Erik', 'Murdvee';
EXEC tootajaLisamine 'Victor', 'Volkov';
EXEC tootajaLisamine 'John', 'Doe';
EXEC tootajaLisamine 'Bill', 'Fence';
EXEC tootajaLisamine 'Frank', 'Williams';
--Procedure was updated
Create Procedure tootajaLisamine
@inputnimi varchar(50),
@inputpere varchar(50),
@inputisik varchar(50)
as
BEGIN
	INSERT INTO tootaja(eesnimi, perenimi,isikukood) VALUES (@inputnimi,@inputpere,@inputisik);
	select * from tootaja;
END;

EXEC tootajaLisamine 'William', 'Rockfield','504043032';

Drop procedure tootajauuendus;


--Protsedur 2
Create Procedure tootajauuendus
@inputpere varchar(50),
@inputid int
as
BEGIN
	UPDATE tootaja set perenimi=@inputpere where ID=@inputid;
	select * from tootaja;
END;
EXEC tootajauuendus 'Gates', 4;

--proc delete
Create Procedure tootajakustuta
@inputid int
as
BEGIN
	DELETE FROM tootaja WHERE ID = @inputid;
	select * from tootaja;
END;
Exec tootajakustuta 3;
