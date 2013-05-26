SELECT DISTINCT a.name 
FROM artist a, artist_relation ar
WHERE a.id = ar.artist1
    AND ar.type = 'member of band'
    AND ar.artist0 IN (
        SELECT DISTINCT ar0.artist0
        FROM artist_relation ar0, artist_relation ar1
        WHERE ar0.type = 'sibling'
            AND ar1.type = 'sibling'
            AND ar0.artist1 = ar1.artist0
            AND ar1.artist1 != ar0.artist0
    )
