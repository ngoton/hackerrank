WITH RECURSIVE cte AS (
    SELECT 2 AS n 
    UNION ALL 
    SELECT n+1 FROM cte WHERE n < 1000
)

SELECT GROUP_CONCAT(data.n separator '&') 
FROM (SELECT t1.n 
      FROM cte t1, cte t2 
      WHERE mod(t1.n, t2.n) = 0 
      GROUP BY t1.n 
      HAVING count(t1.n) = 1
) data
