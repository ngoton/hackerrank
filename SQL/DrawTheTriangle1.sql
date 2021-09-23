WITH RECURSIVE star(n)AS (
            SELECT 20
            UNION ALL
            SELECT n-1 FROM star WHERE n > 1
)

SELECT REPEAT('* ', n)
FROM star
