SELECT DISTINCT b.name
FROM artist AS b,
    artist_relation AS br1,
    artist_relation AS br2, 
    artist_relation AS br3,
    (
        SELECT DISTINCT ar0.artist0 AS artist0, ar0.artist1 AS artist1, ar1.artist1 AS artist2
        FROM artist_relation ar0, artist_relation ar1
        WHERE ar0.type = 'sibling'
            AND ar1.type = 'sibling'
            AND ar0.artist1 = ar1.artist0
            AND ar1.artist1 != ar0.artist0
    ) AS s1
WHERE br1.type = 'member of band'
    AND br2.type = 'member of band'
    AND br3.type = 'member of band'
    AND br1.artist1 = br2.artist1
    AND br2.artist1 = br3.artist1
    AND br1.artist1 = b.id
    AND br1.artist0 = s1.artist0
    AND br2.artist0 = s1.artist1
    AND br3.artist0 = s1.artist2
ORDER BY b.name
