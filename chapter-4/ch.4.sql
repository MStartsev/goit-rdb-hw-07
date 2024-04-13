
-- для коректної фільтрації приводимо значення до одного формату "YYYY-MM-DD"
SET @start_date = DATE_FORMAT('1996-07-10 00:00:00', '%Y-%m-%d' );
SET @end_date = DATE_FORMAT('1996-10-08 00:00:00', '%Y-%m-%d');

SELECT 
	COUNT(*) AS row_count
FROM 
	orders
WHERE 
	date 
    BETWEEN @start_date AND @end_date;
