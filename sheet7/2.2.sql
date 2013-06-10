SELECT DISTINCT
    s1.name
FROM
    songs AS s1,
    songs AS s2
WHERE
    s1.setlist = s2.setlist
AND s1.name = s2.name
AND s1.pos != s2.pos
