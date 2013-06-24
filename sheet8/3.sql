WITH bandmems(artist0, artist1) AS (
    SELECT ar1.artist0, ar1.artist1
    FROM artist_relation AS ar1
    WHERE ar1.type = 'member of band'
    ORDER BY ar1.artist1, ar1.artist0),

bm_agg(artists, artist1) AS (
    SELECT array_agg(bm.artist0), bm.artist1
    FROM bandmems AS bm
    GROUP BY bm.artist1
    HAVING COUNT(bm.artist0) > 1),

bnc(artists, oldid, newid) AS (
SELECT bma1.artists, bma1.artist1, MIN(bma2.artist1)
FROM bm_agg AS bma1,
    bm_agg AS bma2
WHERE bma1.artists = bma2.artists
    AND bma1.artist1 < bma2.artist1
GROUP BY bma1.artist1, bma1.artists)

SELECT a1.name AS old, a2.name AS new
FROM bnc, artist AS a1, artist AS a2
WHERE a1.id = bnc.oldid
AND a2.id = bnc.newid
ORDER BY artists, oldid, newid
