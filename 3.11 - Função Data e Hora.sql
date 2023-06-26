-- Curdate
SELECT CURDATE() AS 'Data Atual';

-- Curtime
SELECT CURTIME() AS 'Hora Atual';

-- Current_time
SELECT CURRENT_TIME() AS 'Hora Atual';

-- Dateadd(data, interval)
SELECT DATE_ADD(CURDATE(),INTERVAL 3 DAY) AS 'Data de Vencimento';

-- Datesub
SELECT DATE_SUB(CURDATE(), INTERVAL 10 DAY) AS 'Data de Matrícula';

-- Datediff(expressão1, expressão2)
SELECT DATEDIFF(CURDATE(), DATE_SUB(CURDATE(), INTERVAL 10 DAY)) AS 'Dias em Atraso';

-- Date_format
SELECT DATE_FORMAT(CURDATE(),'%d\%m\%Y') AS 'Data Atual';

-- Dayname
SELECT DAYNAME(CURDATE()) AS 'Dia da Semana';

-- Dayofmonth
SELECT DAYOFMONTH(CURDATE()) AS 'Dia do Mes';

-- DayofWeek
SELECT DAYOFWEEK(CURDATE()) AS 'Dia do Semana';

-- Dayofyear
SELECT DAYOFYEAR(CURDATE()) AS 'Dia do Mes';

-- from_days
SELECT FROM_DAYS(780500) AS 'Data Real';

-- Now
SELECT NOW() AS 'Data/Hora atual';
SELECT DATE_FORMAT(NOW(),'%d/%m/%Y %h:%m:%s') AS 'Data Atual';
SELECT DATE_FORMAT(CURRENT_TIMESTAMP(), '%d/%m/%Y %H:%m:%s') AS 'Data/Hora Atual';

-- Time
SELECT TIME(CURRENT_TIMESTAMP()) AS 'Hora';

-- TIME_TO_SEC
SELECT SEC_TO_TIME(2000) AS 'Tempo Total';

-- TIME_TO_SEC
SELECT TIME_TO_SEC(TIME(CURRENT_TIMESTAMP())) AS 'Em segundos';

SELECT HOUR(TIME(CURRENT_TIMESTAMP())) AS 'Hora', 
	MINUTE(TIME(CURRENT_TIMESTAMP())) AS 'Minutos', 
    SECOND(TIME(CURRENT_TIMESTAMP())) AS 'Segundos';

SELECT period_diff(201912, 201905) AS 'Meses Restantes';

SELECT TIMEDIFF('12:35:34', '12:30:46') AS 'Diferença';

SELECT QUARTER('2019-03-17') AS 'Trimestre do ano';

SELECT WEEK('2019-03-17') AS 'Semana do Ano';

SELECT WEEKDAY('2019-03-17') AS 'Dia da Semana';

SELECT YEAR('2019-03-17') AS 'Ano';

SELECT MONTH(NOW()) AS 'Mês';

SELECT DAY('2019-03-17') AS 'Dia';
