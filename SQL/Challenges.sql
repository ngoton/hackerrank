SELECT h.hacker_id, h.name, COUNT(c.challenge_id) AS challenges_created
FROM Hackers h
    JOIN Challenges c ON h.hacker_id = c.hacker_id
GROUP BY h.hacker_id, h.name
HAVING challenges_created IN (
        SELECT t.counter
        FROM (
            SELECT hacker_id, COUNT(challenge_id) AS counter 
            FROM challenges
            GROUP BY hacker_id
            ORDER BY counter DESC
        ) AS t
        GROUP BY t.counter 
        HAVING COUNT(t.counter) = 1
    )
    OR challenges_created = (
        SELECT MAX(t.counter)
        FROM (
            SELECT hacker_id, COUNT(challenge_id) AS counter
            FROM challenges
            GROUP BY hacker_id
            ORDER BY counter DESC
        ) AS t
    )
ORDER BY challenges_created DESC, h.hacker_id ASC
