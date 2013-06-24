WITH bandmems(artist0, artist1) AS (SELECT ar1.artist0, ar1.artist1 FROM artist_relation AS ar1 WHERE ar1.type = 'member of band' ORDER BY ar1.artist1, ar1.artist0),
bm_agg(artists, artist1, count) AS (SELECT array_agg(bm.artist0), bm.artist1, COUNT(bm.artist0) FROM bandmems AS bm GROUP BY bm.artist1 HAVING COUNT(bm.artist0) > 1)
SELECT bma1.artists, a1.name, a2.name FROM bm_agg AS bma1, bm_agg AS bma2, artist AS a1, artist AS a2 WHERE bma1.artists = bma2.artists AND bma1.artist1 < bma2.artist1 AND a1.id = bma1.artist1 AND a2.id = bma2.artist1 ORDER BY bma1.artists, a1.name, a2.name
