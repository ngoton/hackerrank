SET @tableSize := (SELECT COUNT(*) FROM STATION);
SET @isEven := (MOD(@tableSize, 2) = 0);
SET @offsetTable := CEIL(@tableSize / 2);
SET @nRow = 0;

SELECT 
    ROUND(AVG(t.LAT_N), 4) 
FROM (
    SELECT 
        @nRow := @nRow + 1 as nrow,
        LAT_N
    FROM STATION
    ORDER BY LAT_N
    ) AS t
WHERE t.nrow BETWEEN @offsetTable AND (@offsetTable + @isEven);
