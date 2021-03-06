SELECT DISTINCT artist.*
FROM artist
WHERE artist.id IN (
    SELECT DISTINCT artist_credit.artist
    FROM artist_credit
    WHERE artist_credit.tracklist IN (
        SELECT DISTINCT release.tracklist
        FROM release
        WHERE release.label = 'Loud Records'
            AND release.format = 'Vinyl'
    )
)
