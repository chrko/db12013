SELECT t1."Tier" as "Tier 1", t2."Tier" as "Tier 2" from ex1_tiere t1, ex1_tiere t2 WHERE NOT t1."Familie" = t2."Familie" AND t1."Ernaehrung" = t2."Ernaehrung" ORDER BY "Tier 1", "Tier 2"
