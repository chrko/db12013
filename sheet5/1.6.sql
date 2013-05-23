SELECT a1.name AS kuenstler,
    r1.name AS album,
    r1.year AS PubJahr
FROM track AS t1,
    artist AS a1,
    artist_credit AS ac1,
    release AS r1
WHERE t1.name LIKE '%mal wieder richtig Sommer%'
    AND a1.id = ac1.artist
    AND ac1.tracklist = t1.tracklist
    AND ac1.pos = t1.pos
    AND t1.tracklist = r1.tracklist
ORDER BY PubJahr DESC
