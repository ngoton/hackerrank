SELECT h.hacker_id, h.name, SUM(score) AS total_score
FROM (
        SELECT hacker_id, challenge_id, MAX(score) AS score 
        FROM Submissions
        GROUP BY hacker_id, challenge_id
    ) t 
    JOIN Hackers h ON t.hacker_id = h.hacker_id
GROUP BY h.hacker_id, h.name
HAVING total_score > 0
ORDER BY total_score DESC, h.hacker_id ASC
