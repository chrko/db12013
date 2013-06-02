SELECT a1.name
FROM artist AS a1
WHERE NOT EXISTS (
    SELECT *
    FROM concert, country
    WHERE concert.country = country.id
        AND country.name = 'United Kingdom'
        AND a1.id = concert.artist
)
