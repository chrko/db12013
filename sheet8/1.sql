WITH concou(loc, count) AS
    (SELECT loc, count(*) AS count
    FROM concert
    WHERE loc IS NOT NULL
    GROUP BY loc),
mostcons(loc, eventdate) AS
    (SELECT concou.loc, eventdate
    FROM concou, concert
    WHERE count >= ALL (SELECT count FROM concou))
SELECT * FROM mostcons
WHERE eventdate <= ALL (SELECT eventdate FROM mostcons)
