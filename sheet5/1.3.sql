SELECT a3.name FROM artist as a3 WHERE a3.id IN
(SELECT ar1.artist1 FROM artist_relation as ar1 WHERE ar1.type = 'sibling' AND ar1.artist0 IN (SELECT a1.id FROM artist as a1 WHERE a1.name = 'Jackson, Michael')
UNION
SELECT ar1.artist0 FROM artist_relation as ar1 WHERE ar1.type = 'sibling' AND ar1.artist1 IN (SELECT a2.id FROM artist as a2 WHERE a2.name = 'Jackson, Michael'))
ORDER BY a3.name ASC
