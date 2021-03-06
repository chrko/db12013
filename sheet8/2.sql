SELECT c1.loc, c1.city, COUNT(c1.*) AS count
FROM concert AS c1, country
WHERE c1.country = country.id
    AND country.name = 'United States'
    AND c1.loc IS NOT NULL
GROUP BY c1.loc, c1.city
ORDER BY count DESC
LIMIT 10
