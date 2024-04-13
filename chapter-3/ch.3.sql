SELECT 
    id,
    date AS original_date,
    -- оскільки date збережно у форматі 'YYYY-MM-DD', що відповідає типу даних DATE
    -- ми можемо застосувати UNIX_TIMESTAMP:
   ROUND( UNIX_TIMESTAMP(date) ) AS UTC_seconds_timestamp	
FROM 
    orders;
