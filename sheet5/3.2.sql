SELECT MAX(tnl) - MIN(tnl) AS differenz
FROM (
        SELECT LENGTH(t1.name) AS tnl
        FROM track AS t1
    ) AS tnl_table
