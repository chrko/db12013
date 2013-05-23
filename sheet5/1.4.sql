WITH BluRays(year)
AS (
    SELECT r1.year
    FROM release AS r1
    WHERE r1.format = 'Blu-ray'
)
SELECT *
FROM BluRays
WHERE BluRays.year <= all (SELECT * FROM BluRays)
