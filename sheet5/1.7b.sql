SELECT DISTINCT b.name
FROM artist AS b,
    artist_relation AS br0,
    artist_relation AS br1, 
    artist_relation AS br2,
    artist_relation ar0,
    artist_relation ar1
WHERE br0.type = 'member of band'
    AND br1.type = 'member of band'
    AND br2.type = 'member of band'
    AND br0.artist1 = br1.artist1
    AND br1.artist1 = br2.artist1
    AND br0.artist1 = b.id
    AND br0.artist0 = ar0.artist0
    AND br1.artist0 = ar0.artist1
    AND br2.artist0 = ar1.artist1
    AND ar0.type = 'sibling'
    AND ar1.type = 'sibling'
    AND ar0.artist1 = ar1.artist0
    AND ar1.artist1 != ar0.artist0
ORDER BY b.name
