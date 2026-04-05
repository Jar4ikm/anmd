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





-----------




-- tabeli struktuuri muutmine

CREATE PROCEDURE muudatus
@tegevus varchar(10),
@tabelinimi varchar(25),
@veerunimi varchar(25),
@tyyp varchar(25) =null
AS
BEGIN
	DECLARE @sqltegevus as varchar(max)
	set @sqltegevus=case 
	when @tegevus='add' then concat('ALTER TABLE ', 
	@tabelinimi, ' ADD ', @veerunimi, ' ', @tyyp)

	when @tegevus='drop' then concat('ALTER TABLE ', 
	@tabelinimi, ' DROP COLUMN ', @veerunimi)
END;
print @sqltegevus;
begin 
	EXEC (@sqltegevus);
END
END;


--добавление столбца
EXEC muudatus @tegevus='add', @tabelinimi='tootaja', @veerunimi='test', @tyyp='text';
--удаление столбца
EXEC muudatus @tegevus='drop', @tabelinimi='tootaja', @veerunimi='test';













Create Procedure addtable
@table_name varchar(50),
@IDname varchar(50)
as
BEGIN
declare @ddl varchar(8000)
	set @ddl=concat('Create Table ', @table_name,'(', @IDname, ' int Primary key identity(1,1))');
	print @ddl;
	begin
	EXEC (@ddl);
	end
END;

Exec addtable 'test', 'ID';





