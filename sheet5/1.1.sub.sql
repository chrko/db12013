SELECT con.name, con.eventdate
FROM concert AS con
WHERE con.country = (
     SELECT country.id
     FROM country
     WHERE country.name = 'Morocco'
)
ORDER BY con.eventdate ASC
