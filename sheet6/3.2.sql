SELECT DISTINCT concert.name FROM concert
WHERE concert.artist IN (
    SELECT ar1.artist1 FROM artist_relation AS ar1
    WHERE ar1.artist0 IN (
        SELECT a1.id FROM artist AS a1
        WHERE a1.name = 'Mercury, Freddie'
    )
)
AND eventdate >= '1991-11-24'
UNION
SELECT DISTINCT r.name
FROM release AS r,
    artist_credit AS ac
WHERE r.year >= 1991
    AND ac.tracklist = r.tracklist
    AND ac.artist IN (
    SELECT ar1.artist1 FROM artist_relation AS ar1
    WHERE ar1.artist0 IN (
        SELECT a1.id FROM artist AS a1
        WHERE a1.name = 'Mercury, Freddie'
    )
)

