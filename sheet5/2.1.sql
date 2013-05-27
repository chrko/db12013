SELECT c.name, COUNT(a.id) AS bandCount
FROM country AS c, artist AS a
WHERE c.id = a.origin
    AND type = 'Group'
GROUP BY c.name
ORDER BY c.name
