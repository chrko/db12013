SELECT a1.name,
    COUNT(ar1.artist0) AS member_count
FROM artist AS a1,
    artist_relation AS ar1
WHERE a1.type = 'Group'
    AND a1.id = ar1.artist1
    AND ar1.type = 'member of band'
GROUP BY a1.name
HAVING COUNT(ar1.artist0) > 50
