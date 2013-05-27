SELECT country.name,
    COUNT(concert.*) AS concert_count
FROM country, concert
WHERE country.id = concert.country
GROUP BY country.name
HAVING COUNT(concert.*) >= 5000
ORDER BY country.name
