WITH RECURSIVE star(n)AS (
            SELECT 1
            UNION ALL
            SELECT n+1 FROM star LIMIT 20
)

SELECT REPEAT('* ', n)
FROM star
