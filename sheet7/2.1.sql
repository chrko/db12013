SELECT
    a.name
FROM
    concert AS con,
    artist_relation AS ar,
    artist AS a
WHERE
    con.eventdate <= '1969-08-17'
AND con.eventdate >= '1969-08-15'
AND con.city = 'Bethel'
AND ar.artist1 = con.artist
AND a.id = ar.artist0
ORDER BY a.name
