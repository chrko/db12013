SELECT c.name, COUNT(a.id) as bandCount FROM country as c, artist as a WHERE c.id = a.origin AND type = 'Group' GROUP BY c.name ORDER BY c.name
