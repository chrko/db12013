SELECT MAX(tnl) - MIN(tnl) as differenz FROM (SELECT LENGTH(t1.name) as tnl FROM track as t1) as tnl_table
