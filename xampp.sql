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
