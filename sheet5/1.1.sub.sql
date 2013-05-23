SELECT con.name, con.eventdate FROM concert as con WHERE con.country = (SELECT country.id FROM country WHERE country.name = 'Morocco') ORDER BY con.eventdate ASC
