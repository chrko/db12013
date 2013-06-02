SELECT MAX(LENGTH(t.name)) - MIN(LENGTH(t.name)) AS differenz
FROM track AS t
