SELECT DISTINCT
    a.name
FROM
    artist AS a,
    concert AS con,
    country AS cou
WHERE
    a.type = 'Group'
AND a.id = con.artist
AND con.country = cou.id
AND cou.name = 'Italy'
AND NOT EXISTS (
    SELECT *
    FROM
        concert AS con,
        country AS cou
    WHERE
        con.country = cou.id
    AND cou.name != 'Italy'
    AND con.artist = a.id
)
ORDER BY a.name
