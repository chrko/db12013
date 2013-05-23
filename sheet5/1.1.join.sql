SELECT con.name, con.eventdate FROM concert as con, country WHERE con.country = country.id AND country.name = 'Morocco' ORDER BY con.eventdate ASC
