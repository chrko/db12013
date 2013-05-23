(
    SELECT DISTINCT s1.name
    FROM songs AS s1
    WHERE s1.setlist IN (
        SELECT DISTINCT c1.setlist
        FROM concert AS c1
        WHERE c1.artist = (
            SELECT a1.id
            FROM artist AS a1
            WHERE a1.name = 'AC/DC'
        )
    )
    EXCEPT
    SELECT DISTINCT t1.name
    FROM track AS t1,
        artist_credit AS ac1,
        release AS r1
    WHERE ac1.artist = (
            SELECT a1.id
            FROM artist AS a1
            WHERE a1.name = 'AC/DC'
	)
        AND ac1.tracklist = t1.tracklist
        AND ac1.pos = t1.pos
        AND t1.tracklist = r1.tracklist
)
ORDER BY name
