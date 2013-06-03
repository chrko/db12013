SELECT DISTINCT a1.name
FROM artist AS a1
WHERE a1.gender = 'F'
    AND not exists (
        SELECT *
        FROM artist_relation AS ar1
        WHERE ar1.type = 'member of band'
            AND ar1.artist0 = a1.id
    )
