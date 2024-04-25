XAMPP Control Panel
Apache - Start
MySql - Start

User - root
Pass - none


|| Parameeter param1 int ||

BEGIN
DECLARE variable1 INT;
set variable1 = param1 + 1;
	IF variable1 = 0 THEN SELECT variable1;
    END IF;
 IF param1 = 0 THEN select 'Parameter value = 0';
 ElSE SELECT 'Parameter value <> 0';
 END IF;
 END

|| Parameeter str varchar(4) ||

BEGIN 
	CASE str 
    WHEN "sum1"
    THEN
    	SELECT kaup, SUM(hind) as "sum1"
        FROM kaup
        GROUP by kaup
        HAVING SUM(hind) < 5;
     WHEN "sum2"
     THEN
     	SELECT kaup, SUM(hind) as "sum2"
        FROM kaup
        GROUP by kaup
        HAVING SUM(hind) >= 5 and SUM(hind) < 10;
     WHEN "sum3"
     THEN
     	SELECT kaup, SUM(hind) as "sum2"
        FROM kaup
        GROUP by kaup
         HAVING SUM(hind) >= 10;
      END CASE;
      END
















----------------------------------------------------


CREATE TABLE kaup(
kaupID int Primary key identity(1,1),
kaup varchar(50) UNIQUE,
hind int,
kirjeldus Text);

INsert into kaup (kaup,hind,kirjeldus,kaal) values ('feather',2,'feather from a bird',10)

CREATE PROCEDURE firs
    @str varchar(4)
AS
BEGIN 

    IF (@str = 'sum1')
    BEGIN
        SELECT kaup, SUM(hind) as sum1
        FROM kaup
        GROUP BY kaup
        HAVING SUM(hind) < 5;
    END
    ELSE IF (@str = 'sum2')
    BEGIN
        SELECT kaup, SUM(hind) as sum2
        FROM kaup
        GROUP BY kaup
        HAVING SUM(hind) >= 5 and SUM(hind) < 10;
    END
    ELSE IF (@str = 'sum3')
    BEGIN
        SELECT kaup, SUM(hind) as sum2
        FROM kaup
        GROUP BY kaup
        HAVING SUM(hind) >= 10;
    END
    ELSE
    BEGIN
        PRINT 'Invalid input';
    END;
END;

exec firs 'sum3'
select * from kaup
UPDATE kaup SET kaal=1000 where kaupID=3;


CREATE PROCEDURE secon
    @str varchar(4)
AS
BEGIN 

    IF (@str = 'sum1')
    BEGIN
        SELECT kaup, SUM(kaal) as sum1
        FROM kaup
        GROUP BY kaup
        HAVING SUM(kaal) < 100;
    END
    ELSE IF (@str = 'sum2')
    BEGIN
        SELECT kaup, SUM(kaal) as sum2
        FROM kaup
        GROUP BY kaup
        HAVING SUM(kaal) >= 100 and SUM(kaal) < 500;
    END
    ELSE IF (@str = 'sum3')
    BEGIN
        SELECT kaup, SUM(kaal) as sum2
        FROM kaup
        GROUP BY kaup
        HAVING SUM(kaal) >= 500;
    END
    ELSE
    BEGIN
        PRINT 'Invalid input';
    END;
END;

exec secon 'sum1'
