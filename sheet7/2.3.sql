SELECT DISTINCT
    a.name,
    r.year
FROM
    artist AS a,
    release AS r,
    artist_credit AS ac
WHERE
    r.format = 'Blu-ray'
AND ac.tracklist = r.tracklist
AND ac.artist = a.id
AND a.type != 'Group'
